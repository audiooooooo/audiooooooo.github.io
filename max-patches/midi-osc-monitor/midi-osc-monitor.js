// midi-osc-monitor.js
// MIT License, Copyright (c) 2026 AUDIO.OOO (https://audio.ooo). See LICENSE.
// Engine for midi-osc-monitor.maxpat (Max 9.x, [v8] object). Keep both files in one folder.
//
// Threading: [v8] runs in Max's low-priority (main) thread. To keep the timing
// metrics honest, the patch stamps every MIDI byte and every OSC message with
// [cpuclock] *before* the data is queued to this object ("ts <ms>" followed by
// "midi <byte>" or "osc <address> <args...>"). All intervals, jitter and burst
// figures are computed from those stamps, not from when JS happens to run.
//
// UI: the patch contains fixed-width [comment] boxes with scripting names
// (wl_hdr, wl_stat0.., wl_top0.., wl_log0..). This script writes their text
// with "set" at REFRESH_MS, only when something changed. Nothing here talks to
// MIDI or network drivers.

autowatch = 1;
inlets = 1;
outlets = 1; // 0: multislider data (list) and "setminmax 0 <max>"

// ---------------------------------------------------------------- settings
const REFRESH_MS = 100;        // UI and rate-window tick
const RATE_TICKS = 10;         // 10 x 100 ms = 1 s sliding window
const GRAPH_POINTS = 120;      // rate history points
const GRAPH_EVERY_TICKS = 2;   // one graph point per 200 ms -> 24 s history
const LOG_LINES = 24;          // visible log rows (wl_log0..wl_log23)
const STAT_LINES = 10;         // wl_stat0..wl_stat9: MIDI 0-3, OSC 4-7, keys 8, spare 9
const TOP_LINES = 8;           // wl_top0..wl_top7
const INTERVAL_WINDOW = 256;   // intervals kept for mean / jitter
const BURST_MS = 10;           // burst window
const MAX_KEYS = 4096;         // cap on tracked addresses / controllers
const CAPTURE_MAX = 20000;     // records kept for CSV export
const DIN_BYTES_PER_SEC = 3125; // 31250 baud / 10 bits per byte

// ---------------------------------------------------------------- options
let mode = 2;          // 0 MIDI only, 1 OSC only, 2 both
let frozen = false;    // log display frozen (stats keep running)
let hideRealtime = true; // keep F8/FA/FB/FC/FE/FF out of the log
let toConsole = false; // post each logged line to the Max Console
let chanFilter = 0;    // 0 = all, 1..16
let textFilter = "";   // case-insensitive substring on the formatted line
let selectedMidi = "all";
let oscPort = 9000;

// ---------------------------------------------------------------- state
let pendingTs = -1;    // last cpuclock stamp received
let t0 = -1;           // cpuclock ms at reset (first stamp after reset)
let curDevice = "?";   // last "port <name>" from [xmidiin]
let parsers = {};      // running-status parser per MIDI device
let src = {};          // per-source statistics
let keys = {};         // per-key statistics
let keyCount = 0;
let keysDropped = 0;
let heldNotes = {};    // "dev|ch|note" -> 1
let heldCount = 0;
let logRing = [];      // newest first, LOG_LINES records
let capture = [];      // records for CSV
let captureDropped = 0;
let logDirty = true;
let tick = 0;
let graph = [];
let ui = null;         // cached Maxobj handles
let lastTextCache = {};

function newSource(name) {
    return {
        name: name,
        total: 0, bytes: 0,
        hist: new Array(RATE_TICKS + 1).fill(null), // {total, bytes, at}
        rate: 0, byteRate: 0, peak: 0,
        firstT: -1, lastT: -1, lastWall: 0,
        intervals: [], lastDt: 0, minDt: Infinity, maxDt: 0,
        burstTimes: [], burst: 0, burstMax: 0,
        dups: 0, errors: 0, running: 0, nonNumeric: 0,
        types: {},
        clockT: -1, clockIntervals: [],
    };
}

function resetAll() {
    src = { MIDI: newSource("MIDI"), OSC: newSource("OSC") };
    keys = {}; keyCount = 0; keysDropped = 0;
    heldNotes = {}; heldCount = 0;
    parsers = {};
    logRing = []; capture = []; captureDropped = 0;
    graph = new Array(GRAPH_POINTS).fill(0);
    t0 = -1; tick = 0;
    logDirty = true;
    lastTextCache = {};
}
resetAll();

// ---------------------------------------------------------------- refresh task
const task = new Task(refresh, this);
task.interval = REFRESH_MS;
task.repeat();

function loadbang() { resetAll(); }
function notifydeleted() { task.cancel(); }

// ---------------------------------------------------------------- inputs
function ts(ms) { pendingTs = ms; if (t0 < 0) t0 = ms; }

let lastTs = 0;
function takeTs() {
    // Every message should be preceded by "ts" from [cpuclock]. If one is
    // missing, reuse the previous stamp rather than mixing in another clock.
    const t = pendingTs >= 0 ? pendingTs : lastTs;
    pendingTs = -1;
    lastTs = t;
    if (t0 < 0) t0 = t;
    return t;
}

// [xmidiin] right outlet: "port <name>" whenever the sending device changes.
function port(...a) { curDevice = a.join(" ") || "?"; }

// From the MIDI input umenu, for display only.
function selected(...a) { selectedMidi = a.join(" ") || "?"; logDirty = true; }

function oscport(p) { oscPort = p | 0; logDirty = true; }

function midi(b) {
    const t = takeTs();
    if (mode === 1) return;
    b = b | 0;
    const s = src.MIDI;
    s.bytes++;
    let p = parsers[curDevice];
    if (!p) p = parsers[curDevice] = { status: 0, need: 0, data: [], sysex: null, fromRunning: false };

    if (b >= 0xF8) { // realtime: single byte, may interleave anything
        emitMidi(t, [b], false);
        return;
    }
    if (b & 0x80) { // status byte
        if (p.sysex) {
            if (b === 0xF7) {
                p.sysex.push(b);
                emitMidi(t, p.sysex, false);
                p.sysex = null;
                return;
            }
            s.errors++; // sysex ended by a status byte other than F7
            emitMidi(t, p.sysex, false, "SysEx (no F7)");
            p.sysex = null;
        }
        if (p.need > 0) s.errors++; // previous message cut short by a new status byte
        if (b === 0xF0) { p.sysex = [b]; p.status = 0; p.need = 0; return; }
        if (b === 0xF7) { s.errors++; emitMidi(t, [b], false, "Stray F7"); return; }
        if (b >= 0xF0) { // system common: cancels running status
            p.status = 0;
            const n = (b === 0xF1 || b === 0xF3) ? 1 : (b === 0xF2 ? 2 : 0);
            if (n === 0) { emitMidi(t, [b], false, (b === 0xF4 || b === 0xF5) ? "Undefined" : null); if (b === 0xF4 || b === 0xF5) s.errors++; return; }
            p.sysStatus = b; p.need = n; p.data = []; p.fromRunning = false;
            return;
        }
        p.status = b; p.sysStatus = 0;
        p.need = ((b & 0xF0) === 0xC0 || (b & 0xF0) === 0xD0) ? 1 : 2;
        p.data = []; p.fromRunning = false;
        return;
    }
    // data byte
    if (p.sysex) { p.sysex.push(b); return; }
    if (p.need === 0 || (p.data.length === 0 && !p.status && !p.sysStatus)) {
        if (p.status) { // running status: reuse last channel status
            p.need = ((p.status & 0xF0) === 0xC0 || (p.status & 0xF0) === 0xD0) ? 1 : 2;
            p.data = []; p.fromRunning = true;
        } else {
            s.errors++;
            emitMidi(t, [b], false, "Orphan data");
            return;
        }
    }
    p.data.push(b);
    if (p.data.length >= p.need) {
        const st = p.sysStatus || p.status;
        const msg = [st].concat(p.data);
        emitMidi(t, msg, p.fromRunning);
        if (p.sysStatus) { p.sysStatus = 0; p.need = 0; }
        else { p.need = 0; p.fromRunning = false; } // next data byte -> running status
        p.data = [];
    }
}

function osc(addr, ...args) {
    const t = takeTs();
    if (mode === 0) return;
    const s = src.OSC;
    addr = String(addr);
    let tags = "", bytes = pad4(addr.length + 1), vals = [];
    for (let i = 0; i < args.length; i++) {
        const v = args[i];
        if (typeof v === "number") {
            // Max hands JS a plain number: an OSC float that holds a whole
            // value (e.g. 1.0) is indistinguishable from an int, so the tag is a guess.
            const isInt = Number.isInteger(v);
            tags += isInt ? "i" : "f";
            bytes += 4;
            vals.push(isInt ? String(v) : v.toFixed(4));
        } else {
            tags += "s";
            s.nonNumeric++;
            const str = String(v);
            bytes += pad4(str.length + 1);
            vals.push(str);
        }
    }
    bytes += pad4(tags.length + 2);
    s.bytes += bytes;
    const valueKey = vals.join(" ");
    record(t, s, {
        src: "OSC", dev: ":" + oscPort, kind: addr, ch: 0,
        key: "OSC " + addr, value: valueKey, tags: tags, size: bytes,
        raw: "", realtime: false, type: "OSC",
    });
}

function pad4(n) { return (n + 3) & ~3; }

// ---------------------------------------------------------------- MIDI decode
const NOTE_NAMES = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];
function noteName(n) { return NOTE_NAMES[n % 12] + (Math.floor(n / 12) - 2); } // 60 = C3 (Max/Apple convention)

function emitMidi(t, bytes, fromRunning, errLabel) {
    const s = src.MIDI;
    if (fromRunning) s.running++;
    const st = bytes[0];
    const hi = st & 0xF0, ch = (st & 0x0F) + 1;
    let type, key, value, text, chan = 0, realtime = false;
    const d1 = bytes[1], d2 = bytes[2];

    if (errLabel) {
        type = "Error"; key = "ERR " + errLabel; value = ""; text = errLabel;
    } else if (st < 0xF0) {
        chan = ch;
        switch (hi) {
            case 0x90:
                if (d2 === 0) { type = "NoteOff"; text = "NoteOff " + noteName(d1) + " (" + d1 + ") vel 0"; noteOff(ch, d1); }
                else { type = "NoteOn"; text = "NoteOn  " + noteName(d1) + " (" + d1 + ") vel " + d2; noteOn(ch, d1); }
                key = "ch" + ch + " Note " + d1; value = String(d2); break;
            case 0x80:
                type = "NoteOff"; text = "NoteOff " + noteName(d1) + " (" + d1 + ") vel " + d2; noteOff(ch, d1);
                key = "ch" + ch + " Note " + d1; value = String(d2); break;
            case 0xA0:
                type = "PolyAT"; text = "PolyAT  " + noteName(d1) + " = " + d2;
                key = "ch" + ch + " PolyAT " + d1; value = String(d2); break;
            case 0xB0:
                type = d1 >= 120 ? "ChanMode" : "CC";
                text = (d1 >= 120 ? "Mode    " : "CC      ") + "#" + d1 + " = " + d2;
                key = "ch" + ch + " CC " + d1; value = String(d2);
                if (d1 === 123 || d1 === 120) clearHeld(ch);
                break;
            case 0xC0:
                type = "PC"; text = "Program " + d1; key = "ch" + ch + " PC"; value = String(d1); break;
            case 0xD0:
                type = "ChanAT"; text = "ChanAT  " + d1; key = "ch" + ch + " ChanAT"; value = String(d1); break;
            case 0xE0: {
                const v = (d2 << 7 | d1) - 8192;
                type = "PB"; text = "PB      " + (v > 0 ? "+" : "") + v; key = "ch" + ch + " PB"; value = String(v); break;
            }
        }
    } else {
        switch (st) {
            case 0xF0: {
                type = "SysEx";
                const man = bytes.length > 1 ? hex(bytes[1]) + (bytes[1] === 0 && bytes.length > 3 ? " " + hex(bytes[2]) + " " + hex(bytes[3]) : "") : "";
                text = "SysEx   " + bytes.length + " B  id " + man;
                key = "SysEx " + man; value = String(bytes.length); break;
            }
            case 0xF1: type = "MTC-QF"; text = "MTC QF  " + (d1 >> 4) + ":" + (d1 & 15); key = "MTC QF"; value = String(d1); break;
            case 0xF2: type = "SPP"; text = "SongPos " + (d2 << 7 | d1); key = "SPP"; value = String(d2 << 7 | d1); break;
            case 0xF3: type = "SongSel"; text = "SongSel " + d1; key = "SongSel"; value = String(d1); break;
            case 0xF6: type = "TuneReq"; text = "TuneRequest"; key = "TuneReq"; value = ""; break;
            case 0xF8: type = "Clock"; text = "Clock"; key = "Clock"; value = ""; realtime = true; clockTick(t); break;
            case 0xFA: type = "Start"; text = "Start"; key = "Start"; value = ""; realtime = true; break;
            case 0xFB: type = "Continue"; text = "Continue"; key = "Continue"; value = ""; realtime = true; break;
            case 0xFC: type = "Stop"; text = "Stop"; key = "Stop"; value = ""; realtime = true; break;
            case 0xFE: type = "ActSense"; text = "ActiveSensing"; key = "ActSense"; value = ""; realtime = true; break;
            case 0xFF: type = "Reset"; text = "SystemReset"; key = "Reset"; value = ""; realtime = true; clearHeld(0); break;
            default: type = "Undefined"; text = "Undefined " + hex(st); key = "Undef " + hex(st); value = ""; break;
        }
    }
    let raw = bytes.slice(0, 8).map(hex).join(" ");
    if (bytes.length > 8) raw += " ..";
    record(t, s, {
        src: "MIDI", dev: curDevice, kind: text, ch: chan,
        key: key, value: value, tags: "", size: bytes.length,
        raw: (fromRunning ? "(rs) " : "") + raw, realtime: realtime, type: type,
    });
}

function hex(b) { return (b < 16 ? "0" : "") + b.toString(16).toUpperCase(); }

function noteOn(ch, n) { const k = curDevice + "|" + ch + "|" + n; if (!heldNotes[k]) { heldNotes[k] = 1; heldCount++; } }
function noteOff(ch, n) { const k = curDevice + "|" + ch + "|" + n; if (heldNotes[k]) { delete heldNotes[k]; heldCount--; } }
function clearHeld(ch) {
    for (const k in heldNotes) {
        const parts = k.split("|");
        if (ch === 0 || (parts[0] === curDevice && +parts[1] === ch)) { delete heldNotes[k]; heldCount--; }
    }
}

function clockTick(t) {
    const s = src.MIDI;
    if (s.clockT >= 0) {
        s.clockIntervals.push(t - s.clockT);
        if (s.clockIntervals.length > 96) s.clockIntervals.shift();
    }
    s.clockT = t;
}

// ---------------------------------------------------------------- common record path
function record(t, s, r) {
    s.total++;
    s.types[r.type] = (s.types[r.type] || 0) + 1;
    s.lastWall = Date.now();

    // inter-arrival per source
    let dt = -1;
    if (s.lastT >= 0) {
        dt = t - s.lastT;
        s.lastDt = dt;
        if (dt < s.minDt) s.minDt = dt;
        if (dt > s.maxDt) s.maxDt = dt;
        s.intervals.push(dt);
        if (s.intervals.length > INTERVAL_WINDOW) s.intervals.shift();
    }
    if (s.firstT < 0) s.firstT = t;
    s.lastT = t;

    // burst: messages within the last BURST_MS
    const bt = s.burstTimes;
    bt.push(t);
    while (bt.length && bt[0] < t - BURST_MS) bt.shift();
    s.burst = bt.length;
    if (s.burst > s.burstMax) s.burstMax = s.burst;

    // per key
    let k = keys[r.key];
    if (!k) {
        if (keyCount < MAX_KEYS) {
            k = keys[r.key] = { name: r.key, src: r.src, count: 0, snaps: new Array(RATE_TICKS).fill(0), rate: 0,
                lastT: -1, dtSum: 0, dtN: 0, dups: 0, last: null, tags: "" };
            keyCount++;
        } else keysDropped++;
    }
    let dk = -1;
    if (k) {
        k.count++;
        if (k.lastT >= 0) { dk = t - k.lastT; k.dtSum += dk; k.dtN++; }
        k.lastT = t;
        if (k.last !== null && k.last === r.value && r.value !== "" && !r.realtime) { k.dups++; s.dups++; }
        k.last = r.value;
        k.tags = r.tags;
    }

    r.t = t; r.dt = dt; r.dk = dk;

    if (r.realtime && hideRealtime) return;
    if (chanFilter > 0 && r.src === "MIDI" && r.ch !== chanFilter) return;
    if (textFilter) {
        r.line = formatLine(r);
        if (r.line.toLowerCase().indexOf(textFilter) < 0) return;
    }

    if (capture.length < CAPTURE_MAX) capture.push(r); else captureDropped++;
    if (toConsole) post((r.line || formatLine(r)) + "\n");
    if (!frozen) {
        logRing.unshift(r);
        if (logRing.length > LOG_LINES) logRing.length = LOG_LINES;
        logDirty = true;
    }
}

// ---------------------------------------------------------------- formatting
function pad(s, n) { s = String(s); return s.length >= n ? s.slice(0, n) : s + " ".repeat(n - s.length); }
function lpad(s, n) { s = String(s); return s.length >= n ? s.slice(0, n) : " ".repeat(n - s.length) + s; }
function ms(v) { return v < 0 ? "    -" : lpad(v < 100 ? v.toFixed(1) : Math.round(v), 5); }
function rel(t) { return lpad(((t - t0) / 1000).toFixed(3), 9); }
function clean(s) { return String(s).replace(/[,;\\{}]/g, " "); }

function formatLine(r) {
    let body;
    if (r.src === "MIDI") {
        body = pad(r.ch ? "ch" + r.ch : "", 5) + pad(r.kind, 30) + pad(r.raw, 24);
    } else {
        body = pad(r.kind, 30) + pad(r.tags, 5) + pad(r.value, 24);
    }
    return rel(r.t) + "  " + pad(r.src, 4) + "  " + body +
        " d " + ms(r.dt) + "  dk " + ms(r.dk) + "  " + pad(r.src === "OSC" ? r.dev + " ~" + r.size + "B" : r.dev, 22);
}

function niceCeil(v) { // 1-2-5 steps: 10, 20, 50, 100, ...
    const e = Math.pow(10, Math.floor(Math.log10(v)));
    for (const m of [1, 2, 5, 10]) if (m * e >= v) return m * e;
    return 10 * e;
}

function fmtRate(v) { return v >= 100 ? Math.round(v).toString() : v.toFixed(1); }

function stats(arr) {
    const n = arr.length;
    if (!n) return { mean: 0, sd: 0 };
    let sum = 0; for (let i = 0; i < n; i++) sum += arr[i];
    const mean = sum / n;
    let v = 0; for (let i = 0; i < n; i++) { const d = arr[i] - mean; v += d * d; }
    return { mean: mean, sd: Math.sqrt(v / n) };
}

function sourceLines(s, now) {
    const out = [];
    const st = stats(s.intervals);
    const idle = s.total ? ((now - s.lastWall) / 1000).toFixed(1) + " s" : "-";
    const span = s.firstT >= 0 && s.lastT > s.firstT ? (s.lastT - s.firstT) / 1000 : 0;
    const avg = span > 0 ? (s.total - 1) / span : 0;
    let l1 = pad(s.name, 5) + "rate " + lpad(fmtRate(s.rate), 6) + "/s   peak " + lpad(fmtRate(s.peak), 6) + "/s   avg(active) " +
        lpad(fmtRate(avg), 6) + "/s   total " + lpad(s.total, 8) + "   ";
    if (s.name === "MIDI") l1 += "bytes " + lpad(Math.round(s.byteRate), 5) + "/s (" + (100 * s.byteRate / DIN_BYTES_PER_SEC).toFixed(1) + "% of DIN)";
    else l1 += "~bytes " + lpad(Math.round(s.byteRate), 6) + "/s (payload est.)";
    l1 += "   idle " + idle;
    out.push(l1);
    out.push("     interval ms  last " + ms(s.lastDt) + "  min " + ms(s.minDt === Infinity ? -1 : s.minDt) + "  mean " + ms(st.mean) +
        "  max " + ms(s.maxDt) + "  jitter(sd) " + ms(st.sd) + "   burst/" + BURST_MS + "ms " + lpad(s.burst, 3) + " (max " + s.burstMax + ")");
    let l3 = "     dup " + (s.total ? (100 * s.dups / s.total).toFixed(1) : "0.0") + "%   errors " + s.errors;
    if (s.name === "MIDI") {
        l3 += "   running-status " + s.running + "   held notes " + heldCount;
        if (s.clockIntervals.length > 4) {
            const c = stats(s.clockIntervals);
            l3 += "   clock " + (60000 / (c.mean * 24)).toFixed(1) + " BPM (sd " + c.sd.toFixed(2) + " ms)";
        }
    } else {
        l3 += "   string args " + s.nonNumeric;
    }
    out.push(l3);
    const types = Object.keys(s.types).sort((a, b) => s.types[b] - s.types[a]).slice(0, 9)
        .map(k => k + " " + s.types[k]).join("  ");
    out.push("     types  " + (types || "-"));
    return out;
}

// ---------------------------------------------------------------- refresh
function getUI() {
    const p = this.patcher;
    const g = name => p.getnamed(name);
    const u = { hdr: g("wl_hdr"), big: g("wl_big"), stat: [], top: [], log: [] };
    for (let i = 0; i < STAT_LINES; i++) u.stat.push(g("wl_stat" + i));
    for (let i = 0; i < TOP_LINES; i++) u.top.push(g("wl_top" + i));
    for (let i = 0; i < LOG_LINES; i++) u.log.push(g("wl_log" + i));
    return u.hdr ? u : null; // patch not fully loaded yet -> retry next tick
}

function setText(obj, id, text) {
    if (!obj) return;
    text = clean(text) || " ";
    if (lastTextCache[id] === text) return;
    lastTextCache[id] = text;
    obj.message("set", text);
}

function refresh() {
    if (!ui) { ui = getUI.call(this); if (!ui) return; }
    const now = Date.now();
    tick++;

    // 1 s sliding window for rates (sampled at each tick)
    for (const name in src) {
        const s = src[name];
        const slot = tick % (RATE_TICKS + 1);
        const old = s.hist[(tick + 1) % (RATE_TICKS + 1)];
        s.hist[slot] = { total: s.total, bytes: s.bytes, at: now };
        if (old) {
            const secs = (now - old.at) / 1000;
            if (secs > 0) {
                s.rate = (s.total - old.total) / secs;
                s.byteRate = (s.bytes - old.bytes) / secs;
                if (s.rate > s.peak) s.peak = s.rate;
            }
        }
        if (s.lastT >= 0 && now - s.lastWall > BURST_MS) s.burst = 0;
    }

    // per-key 1 s rates
    const idx = tick % RATE_TICKS;
    for (const name in keys) {
        const k = keys[name];
        k.rate = (k.count - k.snaps[idx]) * (1000 / (REFRESH_MS * RATE_TICKS));
        k.snaps[idx] = k.count;
    }

    // graph
    if (tick % GRAPH_EVERY_TICKS === 0) {
        const total = (mode !== 1 ? src.MIDI.rate : 0) + (mode !== 0 ? src.OSC.rate : 0);
        graph.push(total); graph.shift();
        let mx = 10; for (let i = 0; i < graph.length; i++) if (graph[i] > mx) mx = graph[i];
        mx = niceCeil(mx);
        outlet(0, "setminmax", 0, mx);
        outlet(0, graph);
        setText(ui.big, "big", fmtRate(total) + " msg/s");
    }

    // header
    const modeName = ["MIDI only", "OSC only", "MIDI + OSC"][mode];
    setText(ui.hdr, "hdr", "watching: " + modeName + "   |   MIDI in: " + selectedMidi + " (last sender: " + curDevice + ")   |   OSC UDP port: " + oscPort +
        "   |   " + (frozen ? "LOG FROZEN   " : "") + (hideRealtime ? "realtime hidden   " : "") +
        (chanFilter ? "ch " + chanFilter + " only   " : "") + (textFilter ? "filter '" + textFilter + "'   " : "") +
        "captured " + capture.length + (captureDropped ? " (+" + captureDropped + " not kept)" : ""));

    // stats
    // Fixed rows, so the patch can give each source its own panel: MIDI 0-3, OSC 4-7, keys 8
    const off = (name) => [pad(name, 5) + "not watched (source)", " ", " ", " "];
    let lines = (mode !== 1 ? sourceLines(src.MIDI, now) : off("MIDI"))
        .concat(mode !== 0 ? sourceLines(src.OSC, now) : off("OSC"));
    lines.push("keys tracked " + keyCount + (keysDropped ? "  (cap " + MAX_KEYS + " reached, " + keysDropped + " msgs untracked)" : ""));
    for (let i = 0; i < STAT_LINES; i++) setText(ui.stat[i], "s" + i, lines[i] || " ");

    // top keys by current rate, then by count
    const top = Object.keys(keys).map(n => keys[n])
        .filter(k => (mode === 2) || (mode === 0 ? k.src === "MIDI" : k.src === "OSC"))
        .sort((a, b) => (b.rate - a.rate) || (b.count - a.count)).slice(0, TOP_LINES - 1);
    setText(ui.top[0], "t0", pad("busiest key", 34) + lpad("rate/s", 8) + lpad("count", 10) + lpad("mean dt ms", 12) +
        lpad("dup %", 8) + "   last value");
    for (let i = 1; i < TOP_LINES; i++) {
        const k = top[i - 1];
        setText(ui.top[i], "t" + i, k ? pad(k.name + (k.tags ? " [" + k.tags + "]" : ""), 34) + lpad(fmtRate(k.rate), 8) + lpad(k.count, 10) +
            lpad(k.dtN ? (k.dtSum / k.dtN).toFixed(1) : "-", 12) + lpad((100 * k.dups / k.count).toFixed(1), 8) + "   " + pad(k.last || "", 40) : " ");
    }

    // log
    if (logDirty) {
        logDirty = false;
        for (let i = 0; i < LOG_LINES; i++) {
            const r = logRing[i];
            setText(ui.log[i], "l" + i, r ? (r.line || (r.line = formatLine(r))) : " ");
        }
    }
}

// ---------------------------------------------------------------- controls
function reset() { resetAll(); }
function clear() { logRing = []; capture = []; captureDropped = 0; logDirty = true; }
function freeze(v) { frozen = !!v; logDirty = true; }
function hidert(v) { hideRealtime = !!v; }
function toconsole(v) { toConsole = !!v; }
function chan(v) { chanFilter = Math.max(0, Math.min(16, v | 0)); }
function setmode(v) { mode = Math.max(0, Math.min(2, v | 0)); lastTextCache = {}; }
function filter(...a) { textFilter = a.join(" ").trim().toLowerCase(); logDirty = true; }

function writecsv(path) {
    const f = new File(String(path), "write", "TEXT");
    if (!f.isopen) { error("midi-osc-monitor: cannot open " + path + "\n"); return; }
    f.eof = 0;
    f.writeline("time_s,source,device,type,channel,key,value,osc_typetags,size_bytes,raw,dt_ms,dt_key_ms");
    const q = v => "\"" + String(v).replace(/"/g, "\"\"") + "\"";
    for (let i = 0; i < capture.length; i++) {
        const r = capture[i];
        f.writeline([((r.t - t0) / 1000).toFixed(6), r.src, q(r.dev), q(r.type), r.ch, q(r.key), q(r.value), r.tags, r.size,
            q(r.raw), r.dt.toFixed(3), r.dk.toFixed(3)].join(","));
    }
    f.close();
    post("midi-osc-monitor: wrote " + capture.length + " messages to " + path + "\n");
}

function anything() {
    post("midi-osc-monitor: unknown message " + messagename + "\n");
}
