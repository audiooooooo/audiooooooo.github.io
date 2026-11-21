{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            40.0,
            40.0,
            1048.0,
            984.0
        ],
        "openinpresentation": 1,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridsize": [
            15.0,
            15.0
        ],
        "description": "MIDI / OSC Monitor: logs every message from a MIDI input (or all inputs) and an OSC UDP port; shows message rate, byte rate, interval and jitter, bursts, duplicates, running status, parse errors, held notes, clock BPM and the busiest controls. Max 9.",
        "digest": "MIDI + OSC message log with throughput and timing",
        "tags": "midi osc monitor debug throughput timing",
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        6.0,
                        1024.0,
                        40.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.12,
                        0.12,
                        0.14,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        6.0,
                        1024.0,
                        40.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        18.0,
                        6.0,
                        260.0,
                        28.0
                    ],
                    "text": "MIDI / OSC Monitor",
                    "fontsize": 20.0,
                    "fontface": 1,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        18.0,
                        6.0,
                        260.0,
                        28.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        280.0,
                        10.0,
                        745.0,
                        34.0
                    ],
                    "text": "Every MIDI and OSC message, its rate and its timing.  Max 9  |  engine: midi-osc-monitor.js (same folder)  |  plumbing: turn Presentation off",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        280.0,
                        10.0,
                        745.0,
                        34.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        52.0,
                        186.0,
                        52.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.21,
                        0.21,
                        0.23,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        52.0,
                        186.0,
                        52.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        16.0,
                        56.0,
                        200.0,
                        18.0
                    ],
                    "text": "SOURCE",
                    "fontsize": 10.0,
                    "fontface": 1,
                    "textcolor": [
                        0.8,
                        0.8,
                        0.82,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        16.0,
                        56.0,
                        200.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        16.0,
                        74.0,
                        170.0,
                        22.0
                    ],
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "items": [
                        "MIDI",
                        "only",
                        ",",
                        "OSC",
                        "only",
                        ",",
                        "MIDI",
                        "+",
                        "OSC"
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        16.0,
                        74.0,
                        170.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        200.0,
                        52.0,
                        384.0,
                        52.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.15,
                        0.22,
                        0.36,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        200.0,
                        52.0,
                        384.0,
                        52.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        208.0,
                        56.0,
                        200.0,
                        18.0
                    ],
                    "text": "MIDI IN",
                    "fontsize": 10.0,
                    "fontface": 1,
                    "textcolor": [
                        0.5,
                        0.7,
                        1.0,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        208.0,
                        56.0,
                        200.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        208.0,
                        74.0,
                        300.0,
                        22.0
                    ],
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        208.0,
                        74.0,
                        300.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        514.0,
                        74.0,
                        22.0,
                        22.0
                    ],
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "blinkcolor": [
                        0.5,
                        0.7,
                        1.0,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        514.0,
                        74.0,
                        22.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        538.0,
                        76.0,
                        44.0,
                        20.0
                    ],
                    "text": "rescan",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        538.0,
                        76.0,
                        44.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        590.0,
                        52.0,
                        196.0,
                        52.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.11,
                        0.29,
                        0.27,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        590.0,
                        52.0,
                        196.0,
                        52.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        598.0,
                        56.0,
                        200.0,
                        18.0
                    ],
                    "text": "OSC IN  (UDP PORT)",
                    "fontsize": 10.0,
                    "fontface": 1,
                    "textcolor": [
                        0.38,
                        0.88,
                        0.76,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        598.0,
                        56.0,
                        200.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        598.0,
                        74.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "minimum": 1,
                    "maximum": 65535,
                    "presentation": 1,
                    "presentation_rect": [
                        598.0,
                        74.0,
                        80.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        684.0,
                        76.0,
                        100.0,
                        20.0
                    ],
                    "text": "all interfaces",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        684.0,
                        76.0,
                        100.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        792.0,
                        52.0,
                        240.0,
                        52.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.21,
                        0.21,
                        0.23,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        792.0,
                        52.0,
                        240.0,
                        52.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800.0,
                        56.0,
                        200.0,
                        18.0
                    ],
                    "text": "CAPTURE",
                    "fontsize": 10.0,
                    "fontface": 1,
                    "textcolor": [
                        0.8,
                        0.8,
                        0.82,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        800.0,
                        56.0,
                        200.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        800.0,
                        74.0,
                        50.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "reset",
                    "presentation": 1,
                    "presentation_rect": [
                        800.0,
                        74.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        856.0,
                        74.0,
                        46.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "clear",
                    "presentation": 1,
                    "presentation_rect": [
                        856.0,
                        74.0,
                        46.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        912.0,
                        74.0,
                        22.0,
                        22.0
                    ],
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        912.0,
                        74.0,
                        22.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        936.0,
                        76.0,
                        90.0,
                        20.0
                    ],
                    "text": "export CSV",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        936.0,
                        76.0,
                        90.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        110.0,
                        1024.0,
                        38.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.21,
                        0.21,
                        0.23,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        110.0,
                        1024.0,
                        38.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        16.0,
                        121.0,
                        40.0,
                        18.0
                    ],
                    "text": "LOG",
                    "fontsize": 10.0,
                    "fontface": 1,
                    "textcolor": [
                        0.8,
                        0.8,
                        0.82,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        16.0,
                        121.0,
                        40.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        52.0,
                        118.0,
                        22.0,
                        22.0
                    ],
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        52.0,
                        118.0,
                        22.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        76.0,
                        120.0,
                        60.0,
                        20.0
                    ],
                    "text": "freeze",
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        76.0,
                        120.0,
                        60.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        140.0,
                        118.0,
                        22.0,
                        22.0
                    ],
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        140.0,
                        118.0,
                        22.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        164.0,
                        120.0,
                        170.0,
                        20.0
                    ],
                    "text": "hide clock / active sensing",
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        164.0,
                        120.0,
                        170.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        340.0,
                        118.0,
                        22.0,
                        22.0
                    ],
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        340.0,
                        118.0,
                        22.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        364.0,
                        120.0,
                        140.0,
                        20.0
                    ],
                    "text": "print to Max Console",
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        364.0,
                        120.0,
                        140.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        512.0,
                        120.0,
                        140.0,
                        20.0
                    ],
                    "text": "MIDI channel (0 = all)",
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        512.0,
                        120.0,
                        140.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        652.0,
                        118.0,
                        44.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "minimum": 0,
                    "maximum": 16,
                    "presentation": 1,
                    "presentation_rect": [
                        652.0,
                        118.0,
                        44.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        708.0,
                        120.0,
                        40.0,
                        20.0
                    ],
                    "text": "filter",
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        708.0,
                        120.0,
                        40.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "patching_rect": [
                        748.0,
                        118.0,
                        210.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "keymode": 1,
                    "outputmode": 1,
                    "lines": 1,
                    "hint": "type text, press Return. Matches anywhere in the log line (case-insensitive).",
                    "presentation": 1,
                    "presentation_rect": [
                        748.0,
                        118.0,
                        210.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        964.0,
                        118.0,
                        22.0,
                        22.0
                    ],
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        964.0,
                        118.0,
                        22.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        988.0,
                        120.0,
                        40.0,
                        20.0
                    ],
                    "text": "clear",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        988.0,
                        120.0,
                        40.0,
                        20.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        154.0,
                        1014.0,
                        18.0
                    ],
                    "text": " ",
                    "varname": "wl_hdr",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        154.0,
                        1014.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        176.0,
                        1024.0,
                        74.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.27,
                        0.2,
                        0.09,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        176.0,
                        1024.0,
                        74.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        16.0,
                        180.0,
                        230.0,
                        18.0
                    ],
                    "text": "RATE  (ALL WATCHED SOURCES)",
                    "fontsize": 10.0,
                    "fontface": 1,
                    "textcolor": [
                        1.0,
                        0.74,
                        0.28,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        16.0,
                        180.0,
                        230.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        16.0,
                        198.0,
                        230.0,
                        34.0
                    ],
                    "text": "0 msg/s",
                    "varname": "wl_big",
                    "fontsize": 24.0,
                    "fontface": 1,
                    "textcolor": [
                        1.0,
                        0.74,
                        0.28,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        16.0,
                        198.0,
                        230.0,
                        34.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        16.0,
                        230.0,
                        230.0,
                        18.0
                    ],
                    "text": "last 24 s",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        16.0,
                        230.0,
                        230.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        250.0,
                        184.0,
                        774.0,
                        58.0
                    ],
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "size": 120,
                    "setminmax": [
                        0.0,
                        10.0
                    ],
                    "setstyle": 1,
                    "settype": 1,
                    "ignoreclick": 1,
                    "orientation": 1,
                    "slidercolor": [
                        1.0,
                        0.74,
                        0.28,
                        1.0
                    ],
                    "bgcolor": [
                        0.14,
                        0.11,
                        0.06,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        250.0,
                        184.0,
                        774.0,
                        58.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        254.0,
                        1014.0,
                        18.0
                    ],
                    "text": "rates over the last 1 s  |  interval from cpuclock at arrival  |  jitter = sd of last 256 intervals  |  burst = msgs within 10 ms  |  dup = same value as last on that key",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        254.0,
                        1014.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        274.0,
                        1024.0,
                        72.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.15,
                        0.22,
                        0.36,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        274.0,
                        1024.0,
                        72.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        279.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat0",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        279.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        294.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat1",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        294.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        309.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat2",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        309.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        324.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat3",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        324.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        352.0,
                        1024.0,
                        72.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.11,
                        0.29,
                        0.27,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        352.0,
                        1024.0,
                        72.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        357.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat4",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        357.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        372.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat5",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        372.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        387.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat6",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        387.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        402.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat7",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        402.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        430.0,
                        1024.0,
                        150.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.24,
                        0.16,
                        0.27,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        430.0,
                        1024.0,
                        150.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        435.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top0",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        435.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        450.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top1",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        450.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        465.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top2",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        465.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        480.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top3",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        480.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        495.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top4",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        495.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        510.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top5",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        510.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        525.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top6",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        525.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        540.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_top7",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "fontface": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        540.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        555.0,
                        500.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat8",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.86,
                        0.62,
                        1.0,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        555.0,
                        500.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        520.0,
                        555.0,
                        500.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_stat9",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        520.0,
                        555.0,
                        500.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.0,
                        586.0,
                        1024.0,
                        384.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "bgcolor": [
                        0.09,
                        0.09,
                        0.1,
                        1.0
                    ],
                    "rounded": 8,
                    "border": 0,
                    "mode": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        8.0,
                        586.0,
                        1024.0,
                        384.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        590.0,
                        1014.0,
                        18.0
                    ],
                    "text": "LOG   newest on top  |  d = since previous message from the same source  |  dk = since previous message on the same key  |  (rs) = running status  |  OSC tags i/f are inferred",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0,
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        590.0,
                        1014.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        608.0,
                        1014.0,
                        17.0
                    ],
                    "text": "   time s  src   MIDI: ch, message, raw bytes  |  OSC: address, tags, args   intervals (ms)     device / port",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "fontface": 1,
                    "textcolor": [
                        1.0,
                        0.74,
                        0.28,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        608.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        626.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log0",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        626.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        640.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log1",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        640.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        654.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log2",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        654.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        668.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log3",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        668.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        682.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log4",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        682.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        696.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log5",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        696.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        710.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log6",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        710.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        724.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log7",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        724.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        738.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log8",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        738.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        752.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log9",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        752.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        766.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log10",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        766.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        780.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log11",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        780.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        794.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log12",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        794.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        808.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log13",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        808.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        822.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log14",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        822.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        836.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log15",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        836.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        850.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log16",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        850.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        864.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log17",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        864.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        878.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log18",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        878.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        892.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log19",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        892.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        906.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log20",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        906.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        920.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log21",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        920.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        934.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log22",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        934.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        14.0,
                        948.0,
                        1014.0,
                        17.0
                    ],
                    "text": " ",
                    "varname": "wl_log23",
                    "fontname": "Courier New",
                    "fontsize": 11.0,
                    "textcolor": [
                        0.92,
                        0.92,
                        0.93,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        14.0,
                        948.0,
                        1014.0,
                        17.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1090.0,
                        8.0,
                        420.0,
                        20.0
                    ],
                    "text": "--- plumbing: keep the stamping order (cpuclock before data) ---",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1090.0,
                        40.0,
                        60.0,
                        22.0
                    ],
                    "outlettype": [
                        "bang"
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "patching_rect": [
                        1090.0,
                        70.0,
                        110.0,
                        22.0
                    ],
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1090.0,
                        100.0,
                        120.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "maxqueuesize 4096"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1220.0,
                        130.0,
                        30.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1260.0,
                        130.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "insert 0 all"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1350.0,
                        100.0,
                        30.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "-1"
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1350.0,
                        130.0,
                        60.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "midiinfo"
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1220.0,
                        170.0,
                        70.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "tosymbol"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        1220.0,
                        200.0,
                        50.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        ""
                    ],
                    "text": "t s s"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1220.0,
                        230.0,
                        85.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1320.0,
                        230.0,
                        105.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend selected"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        1090.0,
                        270.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        "int",
                        ""
                    ],
                    "text": "xmidiin all"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        1090.0,
                        300.0,
                        50.0,
                        22.0
                    ],
                    "outlettype": [
                        "int",
                        "bang"
                    ],
                    "text": "t i b"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1090.0,
                        330.0,
                        85.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend midi"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1320.0,
                        270.0,
                        95.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "loadmess 9000"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        1320.0,
                        300.0,
                        50.0,
                        22.0
                    ],
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1320.0,
                        330.0,
                        85.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend port"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1420.0,
                        330.0,
                        100.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend oscport"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1320.0,
                        370.0,
                        110.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "udpreceive 9000"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        1320.0,
                        400.0,
                        50.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1320.0,
                        430.0,
                        80.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend osc"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1200.0,
                        400.0,
                        65.0,
                        22.0
                    ],
                    "outlettype": [
                        "float"
                    ],
                    "text": "cpuclock"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1200.0,
                        430.0,
                        75.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend ts"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        40.0,
                        75.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        70.0,
                        105.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend setmode"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        110.0,
                        75.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        140.0,
                        100.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend hidert"
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        170.0,
                        100.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend freeze"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        200.0,
                        115.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend toconsole"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        230.0,
                        90.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend chan"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1450.0,
                        260.0,
                        95.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend filter"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        1570.0,
                        110.0,
                        50.0,
                        22.0
                    ],
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1570.0,
                        140.0,
                        45.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        1625.0,
                        140.0,
                        45.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "filter"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        1570.0,
                        200.0,
                        75.0,
                        22.0
                    ],
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "text": "savedialog"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1570.0,
                        230.0,
                        105.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "prepend writecsv"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        1200.0,
                        480.0,
                        220.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "text": "v8 midi-osc-monitor.js",
                    "varname": "monitor_engine"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1200.0,
                        506.0,
                        260.0,
                        20.0
                    ],
                    "text": "outlet 0 -> rate graph (list + setminmax)",
                    "textcolor": [
                        0.64,
                        0.65,
                        0.68,
                        1.0
                    ],
                    "fontsize": 11.0
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        18.0,
                        28.0,
                        260.0,
                        16.0
                    ],
                    "text": "by audio.ooo",
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "textcolor": [
                        1.0,
                        0.74,
                        0.28,
                        1.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        18.0,
                        28.0,
                        260.0,
                        16.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-92",
                        0
                    ],
                    "destination": [
                        "obj-93",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-93",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-93",
                        3
                    ],
                    "destination": [
                        "obj-97",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-97",
                        0
                    ],
                    "destination": [
                        "obj-98",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-98",
                        0
                    ],
                    "destination": [
                        "obj-9",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-93",
                        2
                    ],
                    "destination": [
                        "obj-96",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-96",
                        0
                    ],
                    "destination": [
                        "obj-9",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-93",
                        1
                    ],
                    "destination": [
                        "obj-95",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-95",
                        0
                    ],
                    "destination": [
                        "obj-9",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-93",
                        0
                    ],
                    "destination": [
                        "obj-94",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        1
                    ],
                    "destination": [
                        "obj-99",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-99",
                        0
                    ],
                    "destination": [
                        "obj-100",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-100",
                        1
                    ],
                    "destination": [
                        "obj-102",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-100",
                        0
                    ],
                    "destination": [
                        "obj-101",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-101",
                        0
                    ],
                    "destination": [
                        "obj-103",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-103",
                        0
                    ],
                    "destination": [
                        "obj-104",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-104",
                        0
                    ],
                    "destination": [
                        "obj-105",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-106",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-14",
                        0
                    ],
                    "destination": [
                        "obj-107",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-107",
                        1
                    ],
                    "destination": [
                        "obj-109",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-107",
                        0
                    ],
                    "destination": [
                        "obj-108",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-108",
                        0
                    ],
                    "destination": [
                        "obj-110",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-94",
                        0
                    ],
                    "destination": [
                        "obj-110",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-110",
                        0
                    ],
                    "destination": [
                        "obj-111",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-111",
                        0
                    ],
                    "destination": [
                        "obj-112",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-104",
                        1
                    ],
                    "destination": [
                        "obj-113",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-111",
                        1
                    ],
                    "destination": [
                        "obj-113",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-113",
                        0
                    ],
                    "destination": [
                        "obj-114",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-115",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-116",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-117",
                        0
                    ],
                    "destination": [
                        "obj-26",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-26",
                        0
                    ],
                    "destination": [
                        "obj-118",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-24",
                        0
                    ],
                    "destination": [
                        "obj-119",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-28",
                        0
                    ],
                    "destination": [
                        "obj-120",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-31",
                        0
                    ],
                    "destination": [
                        "obj-121",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-33",
                        0
                    ],
                    "destination": [
                        "obj-122",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-34",
                        0
                    ],
                    "destination": [
                        "obj-123",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-123",
                        1
                    ],
                    "destination": [
                        "obj-124",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-124",
                        0
                    ],
                    "destination": [
                        "obj-33",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-123",
                        0
                    ],
                    "destination": [
                        "obj-125",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        0
                    ],
                    "destination": [
                        "obj-126",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-126",
                        0
                    ],
                    "destination": [
                        "obj-127",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-105",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-114",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-112",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-102",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-109",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-116",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-118",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-119",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-120",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-121",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-122",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-125",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-127",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-18",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-19",
                        0
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ],
                    "hidden": 1
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-103",
                        1
                    ],
                    "destination": [
                        "obj-128",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-128",
                        0
                    ],
                    "destination": [
                        "obj-41",
                        0
                    ],
                    "hidden": 1
                }
            }
        ],
        "autosave": 0
    }
}