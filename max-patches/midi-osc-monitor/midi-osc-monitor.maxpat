{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 134.0, 102.0, 1048.0, 984.0 ],
        "openinpresentation": 1,
        "description": "MIDI / OSC Monitor: logs every message from a MIDI input (or all inputs) and an OSC UDP port; shows message rate, byte rate, interval and jitter, bursts, duplicates, running status, parse errors, held notes, clock BPM and the busiest controls. Max 9.",
        "digest": "MIDI + OSC message log with throughput and timing",
        "tags": "midi osc monitor debug throughput timing",
        "boxes": [
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.12, 0.12, 0.14, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 6.0, 1024.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 6.0, 1024.0, 40.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 6.0, 260.0, 29.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 18.0, 6.0, 260.0, 29.0 ],
                    "text": "MIDI / OSC Monitor",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 280.0, 10.0, 745.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 280.0, 10.0, 745.0, 19.0 ],
                    "text": "Every MIDI and OSC message, its rate and its timing.  Max 9  |  engine: midi-osc-monitor.js (same folder)  |  plumbing: turn Presentation off",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.21, 0.21, 0.23, 1.0 ],
                    "id": "obj-4",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 52.0, 186.0, 52.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 52.0, 186.0, 52.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 56.0, 200.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 56.0, 200.0, 18.0 ],
                    "text": "SOURCE",
                    "textcolor": [ 0.8, 0.8, 0.82, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "items": [ "MIDI", "only", ",", "OSC", "only", ",", "MIDI", "+", "OSC" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 16.0, 74.0, 170.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 74.0, 170.0, 22.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.15, 0.22, 0.36, 1.0 ],
                    "id": "obj-7",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 52.0, 384.0, 52.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 200.0, 52.0, 384.0, 52.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 208.0, 56.0, 200.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 208.0, 56.0, 200.0, 18.0 ],
                    "text": "MIDI IN",
                    "textcolor": [ 0.5, 0.7, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "items": [ "all", ",", "PIEP v2 Bluetooth", ",", "UMP Network Network MIDI 2.0 Session 1", ",", "to Max 1", ",", "to Max 2" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 208.0, 74.0, 300.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 208.0, 74.0, 300.0, 22.0 ]
                }
            },
            {
                "box": {
                    "blinkcolor": [ 0.5, 0.7, 1.0, 1.0 ],
                    "id": "obj-10",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 514.0, 74.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 514.0, 74.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 538.0, 76.0, 44.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 538.0, 76.0, 44.0, 19.0 ],
                    "text": "rescan",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.11, 0.29, 0.27, 1.0 ],
                    "id": "obj-12",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 590.0, 52.0, 196.0, 52.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 590.0, 52.0, 196.0, 52.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 598.0, 56.0, 200.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 598.0, 56.0, 200.0, 18.0 ],
                    "text": "OSC IN  (UDP PORT)",
                    "textcolor": [ 0.38, 0.88, 0.76, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "number",
                    "maximum": 65535,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 598.0, 74.0, 80.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 598.0, 74.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 684.0, 76.0, 100.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 684.0, 76.0, 100.0, 19.0 ],
                    "text": "all interfaces",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.21, 0.21, 0.23, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 792.0, 52.0, 240.0, 52.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 792.0, 52.0, 240.0, 52.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 800.0, 56.0, 200.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 800.0, 56.0, 200.0, 18.0 ],
                    "text": "CAPTURE",
                    "textcolor": [ 0.8, 0.8, 0.82, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 800.0, 74.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 800.0, 74.0, 50.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 856.0, 74.0, 46.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 856.0, 74.0, 46.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 912.0, 74.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 912.0, 74.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 936.0, 76.0, 90.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 936.0, 76.0, 90.0, 19.0 ],
                    "text": "export CSV",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.21, 0.21, 0.23, 1.0 ],
                    "id": "obj-22",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 110.0, 1024.0, 38.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 110.0, 1024.0, 38.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 121.0, 40.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 121.0, 40.0, 18.0 ],
                    "text": "LOG",
                    "textcolor": [ 0.8, 0.8, 0.82, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 52.0, 118.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 52.0, 118.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 76.0, 120.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 76.0, 120.0, 60.0, 20.0 ],
                    "text": "freeze",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 118.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 140.0, 118.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 164.0, 120.0, 170.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 164.0, 120.0, 170.0, 20.0 ],
                    "text": "hide clock / active sensing",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 340.0, 118.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 340.0, 118.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 364.0, 120.0, 140.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 364.0, 120.0, 140.0, 20.0 ],
                    "text": "print to Max Console",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 512.0, 120.0, 140.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 512.0, 120.0, 140.0, 20.0 ],
                    "text": "MIDI channel (0 = all)",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "number",
                    "maximum": 16,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 652.0, 118.0, 44.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 652.0, 118.0, 44.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 708.0, 120.0, 40.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 708.0, 120.0, 40.0, 20.0 ],
                    "text": "filter",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ]
                }
            },
            {
                "box": {
                    "hint": "type text, press Return. Matches anywhere in the log line (case-insensitive).",
                    "id": "obj-33",
                    "keymode": 1,
                    "lines": 1,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "outputmode": 1,
                    "parameter_enable": 0,
                    "patching_rect": [ 748.0, 118.0, 210.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 748.0, 118.0, 210.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 964.0, 118.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 964.0, 118.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 988.0, 120.0, 40.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 988.0, 120.0, 40.0, 19.0 ],
                    "text": "clear",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 154.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 154.0, 1014.0, 19.0 ],
                    "text": "watching: MIDI + OSC   |   MIDI in: all (last sender: PIEP v2 Bluetooth)   |   OSC UDP port: 9000   |   realtime hidden   captured 10453",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_hdr"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.27, 0.2, 0.09, 1.0 ],
                    "id": "obj-37",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 176.0, 1024.0, 74.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 176.0, 1024.0, 74.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10.0,
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 180.0, 230.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 180.0, 230.0, 18.0 ],
                    "text": "RATE  (ALL WATCHED SOURCES)",
                    "textcolor": [ 1.0, 0.74, 0.28, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 24.0,
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 198.0, 230.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 198.0, 230.0, 33.0 ],
                    "text": "0.0 msg/s",
                    "textcolor": [ 1.0, 0.74, 0.28, 1.0 ],
                    "varname": "wl_big"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 16.0, 230.0, 230.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 230.0, 230.0, 19.0 ],
                    "text": "last 24 s",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.14, 0.11, 0.06, 1.0 ],
                    "id": "obj-41",
                    "ignoreclick": 1,
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 250.0, 184.0, 774.0, 58.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 250.0, 184.0, 774.0, 58.0 ],
                    "setminmax": [ 0.0, 10.0 ],
                    "setstyle": 1,
                    "size": 120,
                    "slidercolor": [ 1.0, 0.74, 0.28, 1.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 254.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 254.0, 1014.0, 19.0 ],
                    "text": "rates over the last 1 s  |  interval from cpuclock at arrival  |  jitter = sd of last 256 intervals  |  burst = msgs within 10 ms  |  dup = same value as last on that key",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.15, 0.22, 0.36, 1.0 ],
                    "id": "obj-43",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 274.0, 1024.0, 72.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 274.0, 1024.0, 72.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 279.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 279.0, 1014.0, 19.0 ],
                    "text": "MIDI rate    0.0/s   peak    457/s   avg(active)    0.6/s   total     7406   bytes     0/s (0.0% of DIN)   idle 80.4 s",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat0"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 294.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 294.0, 1014.0, 19.0 ],
                    "text": "     interval ms  last   0.0  min   0.0  mean   4.9  max 93758  jitter(sd)  10.1   burst/10ms   0 (max 39)",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat1"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 309.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 309.0, 1014.0, 19.0 ],
                    "text": "     dup 0.6%   errors 0   running-status 0   held notes 0",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat2"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 324.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 324.0, 1014.0, 19.0 ],
                    "text": "     types  CC 7405  SysEx 1",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat3"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.11, 0.29, 0.27, 1.0 ],
                    "id": "obj-48",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 352.0, 1024.0, 72.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 352.0, 1024.0, 72.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 357.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 357.0, 1014.0, 19.0 ],
                    "text": "OSC  rate    0.0/s   peak    324/s   avg(active)    2.0/s   total     3047   ~bytes      0/s (payload est.)   idle 12346.4 s",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat4"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 372.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 372.0, 1014.0, 19.0 ],
                    "text": "     interval ms  last   0.0  min   0.0  mean  49.8  max 13855  jitter(sd)   378   burst/10ms   0 (max 44)",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat5"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 387.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 387.0, 1014.0, 19.0 ],
                    "text": "     dup 9.2%   errors 0   string args 0",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat6"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 402.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 402.0, 1014.0, 19.0 ],
                    "text": "     types  OSC 3047",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat7"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.24, 0.16, 0.27, 1.0 ],
                    "id": "obj-53",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 430.0, 1024.0, 150.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 430.0, 1024.0, 150.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 435.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 435.0, 1014.0, 19.0 ],
                    "text": "busiest key                         rate/s     count  mean dt ms   dup %   last value",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top0"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 450.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 450.0, 1014.0, 19.0 ],
                    "text": "OSC /xypal/cc/1 [i]                    0.0      1204      1280.8    22.8   28                                      ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top1"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 465.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 465.0, 1014.0, 19.0 ],
                    "text": "ch13 CC 27                             0.0       841     14120.3     0.0   94                                      ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 480.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 480.0, 1014.0, 19.0 ],
                    "text": "ch13 CC 6                              0.0       841     14120.3     0.0   94                                      ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top3"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 495.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 495.0, 1014.0, 19.0 ],
                    "text": "ch13 CC 26                             0.0       818     14517.8     0.0   121                                     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top4"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 510.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 510.0, 1014.0, 19.0 ],
                    "text": "ch13 CC 7                              0.0       802     14804.3     0.0   94                                      ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top5"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 525.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 525.0, 1014.0, 19.0 ],
                    "text": "OSC /xypal/cc/16 [i]                   0.0       796      1905.8     0.9   28                                      ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top6"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 540.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 540.0, 1014.0, 19.0 ],
                    "text": "ch9 CC 21                              0.0       745     16100.3     0.0   45                                      ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_top7"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 555.0, 500.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 555.0, 500.0, 19.0 ],
                    "text": "keys tracked 18",
                    "textcolor": [ 0.86, 0.62, 1.0, 1.0 ],
                    "varname": "wl_stat8"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 520.0, 555.0, 500.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 520.0, 555.0, 500.0, 19.0 ],
                    "text": " ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_stat9"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [ 0.09, 0.09, 0.1, 1.0 ],
                    "id": "obj-64",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 586.0, 1024.0, 384.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 586.0, 1024.0, 384.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 590.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 590.0, 1014.0, 19.0 ],
                    "text": "LOG   newest on top  |  d = since previous message from the same source  |  dk = since previous message on the same key  |  (rs) = running status  |  OSC tags i/f are inferred",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 608.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 608.0, 1014.0, 19.0 ],
                    "text": "   time s  src   MIDI: ch, message, raw bytes  |  OSC: address, tags, args   intervals (ms)     device / port",
                    "textcolor": [ 1.0, 0.74, 0.28, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 626.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 626.0, 1014.0, 19.0 ],
                    "text": "13806.542  MIDI  ch13 CC      #26 = 121             BC 1A 79                 d   0.0  dk  25.6  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log0"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 640.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 640.0, 1014.0, 19.0 ],
                    "text": "13806.542  MIDI  ch13 CC      #7 = 94               BC 07 5E                 d   0.0  dk  25.6  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log1"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 654.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 654.0, 1014.0, 19.0 ],
                    "text": "13806.542  MIDI  ch13 CC      #6 = 94               BC 06 5E                 d   0.1  dk  26.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log2"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 668.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 668.0, 1014.0, 19.0 ],
                    "text": "13806.542  MIDI  ch13 CC      #27 = 94              BC 1B 5E                 d  25.5  dk  26.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log3"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 682.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 682.0, 1014.0, 19.0 ],
                    "text": "13806.516  MIDI  ch13 CC      #26 = 118             BC 1A 76                 d   0.0  dk  15.6  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log4"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-72",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 696.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 696.0, 1014.0, 19.0 ],
                    "text": "13806.516  MIDI  ch13 CC      #7 = 90               BC 07 5A                 d   0.5  dk  15.6  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log5"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 710.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 710.0, 1014.0, 19.0 ],
                    "text": "13806.516  MIDI  ch13 CC      #6 = 90               BC 06 5A                 d   0.1  dk  15.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log6"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 724.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 724.0, 1014.0, 19.0 ],
                    "text": "13806.515  MIDI  ch13 CC      #27 = 90              BC 1B 5A                 d  15.0  dk  15.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log7"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 738.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 738.0, 1014.0, 19.0 ],
                    "text": "13806.500  MIDI  ch13 CC      #26 = 113             BC 1A 71                 d   0.0  dk  14.8  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log8"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 752.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 752.0, 1014.0, 19.0 ],
                    "text": "13806.500  MIDI  ch13 CC      #7 = 84               BC 07 54                 d   0.0  dk  14.8  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log9"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 766.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 766.0, 1014.0, 19.0 ],
                    "text": "13806.500  MIDI  ch13 CC      #6 = 84               BC 06 54                 d   0.1  dk  14.8  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log10"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 780.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 780.0, 1014.0, 19.0 ],
                    "text": "13806.500  MIDI  ch13 CC      #27 = 84              BC 1B 54                 d  14.7  dk  14.8  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log11"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 794.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 794.0, 1014.0, 19.0 ],
                    "text": "13806.486  MIDI  ch13 CC      #26 = 110             BC 1A 6E                 d   0.0  dk  14.3  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log12"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-80",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 808.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 808.0, 1014.0, 19.0 ],
                    "text": "13806.486  MIDI  ch13 CC      #7 = 79               BC 07 4F                 d   0.0  dk  14.3  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log13"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 822.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 822.0, 1014.0, 19.0 ],
                    "text": "13806.486  MIDI  ch13 CC      #6 = 79               BC 06 4F                 d   0.0  dk  14.3  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log14"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 836.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 836.0, 1014.0, 19.0 ],
                    "text": "13806.486  MIDI  ch13 CC      #27 = 79              BC 1B 4F                 d  14.2  dk  14.3  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log15"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-83",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 850.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 850.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #26 = 106             BC 1A 6A                 d   0.0  dk   0.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log16"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 864.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 864.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #7 = 74               BC 07 4A                 d   0.0  dk   0.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log17"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-85",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 878.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 878.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #6 = 74               BC 06 4A                 d   0.0  dk   0.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log18"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 892.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 892.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #27 = 74              BC 1B 4A                 d   0.0  dk   0.2  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log19"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-87",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 906.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 906.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #26 = 103             BC 1A 67                 d   0.0  dk  29.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log20"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 920.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 920.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #7 = 70               BC 07 46                 d   0.0  dk  29.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log21"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 934.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 934.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #6 = 70               BC 06 46                 d   0.1  dk  29.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log22"
                }
            },
            {
                "box": {
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 14.0, 948.0, 1014.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 14.0, 948.0, 1014.0, 19.0 ],
                    "text": "13806.471  MIDI  ch13 CC      #27 = 70              BC 1B 46                 d  29.0  dk  29.1  PIEP v2 Bluetooth     ",
                    "textcolor": [ 0.92, 0.92, 0.93, 1.0 ],
                    "varname": "wl_log23"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-91",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1090.0, 8.0, 420.0, 19.0 ],
                    "text": "--- plumbing: keep the stamping order (cpuclock before data) ---",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1090.0, 40.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 1090.0, 70.0, 110.0, 22.0 ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1090.0, 100.0, 120.0, 22.0 ],
                    "text": "maxqueuesize 4096"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1220.0, 130.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1260.0, 130.0, 80.0, 22.0 ],
                    "text": "insert 0 all"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1350.0, 100.0, 30.0, 22.0 ],
                    "text": "-1"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1350.0, 130.0, 60.0, 22.0 ],
                    "text": "midiinfo"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1220.0, 170.0, 70.0, 22.0 ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1220.0, 200.0, 50.0, 22.0 ],
                    "text": "t s s"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1220.0, 230.0, 85.0, 22.0 ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1320.0, 230.0, 105.0, 22.0 ],
                    "text": "prepend selected"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 1090.0, 270.0, 80.0, 22.0 ],
                    "text": "xmidiin all"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "bang" ],
                    "patching_rect": [ 1090.0, 300.0, 50.0, 22.0 ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1090.0, 330.0, 85.0, 22.0 ],
                    "text": "prepend midi"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1320.0, 270.0, 95.0, 22.0 ],
                    "text": "loadmess 9000"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 1320.0, 300.0, 50.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1320.0, 330.0, 85.0, 22.0 ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1420.0, 330.0, 100.0, 22.0 ],
                    "text": "prepend oscport"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1320.0, 370.0, 110.0, 22.0 ],
                    "text": "udpreceive 9000"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1320.0, 400.0, 50.0, 22.0 ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1320.0, 430.0, 80.0, 22.0 ],
                    "text": "prepend osc"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1200.0, 400.0, 65.0, 22.0 ],
                    "text": "cpuclock"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1200.0, 430.0, 75.0, 22.0 ],
                    "text": "prepend ts"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 40.0, 75.0, 22.0 ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 70.0, 105.0, 22.0 ],
                    "text": "prepend setmode"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 110.0, 75.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 140.0, 100.0, 22.0 ],
                    "text": "prepend hidert"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 170.0, 100.0, 22.0 ],
                    "text": "prepend freeze"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 200.0, 115.0, 22.0 ],
                    "text": "prepend toconsole"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 230.0, 90.0, 22.0 ],
                    "text": "prepend chan"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1450.0, 260.0, 95.0, 22.0 ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1570.0, 110.0, 50.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1570.0, 140.0, 45.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1625.0, 140.0, 45.0, 22.0 ],
                    "text": "filter"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "bang" ],
                    "patching_rect": [ 1570.0, 200.0, 75.0, 22.0 ],
                    "text": "savedialog"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1570.0, 230.0, 105.0, 22.0 ],
                    "text": "prepend writecsv"
                }
            },
            {
                "box": {
                    "filename": "midi-osc-monitor.js",
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1200.0, 480.0, 220.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "v8 midi-osc-monitor.js",
                    "textfile": {
                        "filename": "midi-osc-monitor.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    },
                    "varname": "monitor_engine"
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-129",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1200.0, 506.0, 260.0, 19.0 ],
                    "text": "outlet 0 -> rate graph (list + setminmax)",
                    "textcolor": [ 0.64, 0.65, 0.68, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-130",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 28.0, 260.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 18.0, 28.0, 260.0, 18.0 ],
                    "text": "by audio.ooo",
                    "textcolor": [ 1.0, 0.74, 0.28, 1.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "hidden": 1,
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-100", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-103", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-104", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "hidden": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-107", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "source": [ "obj-111", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-112", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "source": [ "obj-113", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "hidden": 1,
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "hidden": 1,
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "source": [ "obj-123", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "hidden": 1,
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "hidden": 1,
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "hidden": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "hidden": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "hidden": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "hidden": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "hidden": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "hidden": 1,
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "hidden": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "hidden": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "hidden": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "hidden": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-99", 0 ],
                    "hidden": 1,
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-93", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-93", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-93", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "hidden": 1,
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "hidden": 1,
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 1 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "hidden": 1,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}