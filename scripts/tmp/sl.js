ilib.data.plurals_sl = {
    "few": {
        "or": [
            {
                "and": [
                    {
                        "eq": [
                            "v",
                            0
                        ]
                    },
                    {
                        "eq": [
                            {
                                "mod": [
                                    "i",
                                    100
                                ]
                            },
                            [
                                3,
                                4
                            ]
                        ]
                    }
                ]
            },
            {
                "neq": [
                    "v",
                    0
                ]
            }
        ]
    },
    "one": {
        "and": [
            {
                "eq": [
                    "v",
                    0
                ]
            },
            {
                "eq": [
                    {
                        "mod": [
                            "i",
                            100
                        ]
                    },
                    1
                ]
            }
        ]
    },
    "two": {
        "and": [
            {
                "eq": [
                    "v",
                    0
                ]
            },
            {
                "eq": [
                    {
                        "mod": [
                            "i",
                            100
                        ]
                    },
                    2
                ]
            }
        ]
    }
}
ilib.data.localeinfo_sl = {
    "delimiter": {
        "alternateQuotationEnd": "‘",
        "alternateQuotationStart": "‚",
        "quotationEnd": "“",
        "quotationStart": "„"
    },
    "language.name": "Slovenian",
    "locale": "sl",
    "numfmt": {
        "currencyFormats": {
            "common": "{n} {s}",
            "commonNegative": "−{n} {s}"
        },
        "decimalChar": ",",
        "exponential": "e",
        "groupChar": ".",
        "negativenumFmt": "−{n}",
        "negativepctFmt": "−{n} %",
        "pctFmt": "{n} %"
    },
    "scripts": [
        "Latn"
    ]
}
ilib.data.localeinfo_und_SI = {
    "clock": "24",
    "currency": "EUR",
    "firstDayOfWeek": 1,
    "locale": "SI",
    "region.name": "Slovenia",
    "timezone": "Europe/Ljubljana"
}
ilib.data.dateformats_sl = {
    "dayPeriods": [
        {
            "at": 0
        },
        {
            "from": 0,
            "to": 720
        },
        {
            "from": 360,
            "to": 600
        },
        {
            "from": 600,
            "to": 720
        },
        {
            "at": 720
        },
        {
            "from": 720,
            "to": 1080
        },
        {
            "from": 720,
            "to": 1440
        },
        {
            "from": 1080,
            "to": 1320
        },
        {
            "from": 1320,
            "to": 360
        }
    ],
    "gregorian": {
        "date": {
            "d": {
                "f": "d",
                "l": "d",
                "m": "d",
                "s": "d"
            },
            "dm": {
                "f": "d. MMMM",
                "l": "d. MMMM",
                "m": "d. MMM",
                "s": "d. M"
            },
            "dmw": {
                "f": "EEEE, d. MMMM",
                "l": "EEE, d. MMMM",
                "m": "EE, d. MMM",
                "s": "E, d. M"
            },
            "dmwy": {
                "f": "EEEE, d. MMMM yyyy",
                "l": "EEE, d. MMMM yyyy",
                "m": "EE, d. MMM yyyy",
                "s": "E, d. M. yy"
            },
            "dmy": {
                "f": "d. MMMM yyyy",
                "l": "d. MMMM yyyy",
                "m": "d. MMM yyyy",
                "s": "d. M. yy"
            },
            "dw": {
                "f": "EEEE, d",
                "l": "EEE, d",
                "m": "EE, d",
                "s": "E, d"
            },
            "m": {
                "l": "MMMM",
                "m": "MMM"
            },
            "my": {
                "l": "MMMM yyyy",
                "m": "MMM yyyy",
                "s": "M. yy"
            }
        },
        "order": {
            "f": "{date} 'ob' {time}",
            "l": "{date} 'ob' {time}",
            "m": "{date}, {time}",
            "s": "{date}, {time}"
        },
        "range": {
            "c00": {
                "f": "{sd}. {sm} {sy} ob {st} – {et}",
                "l": "{sd}. {sm} {sy} ob {st} – {et}",
                "m": "{sd}. {sm} {sy}, {st} – {et}",
                "s": "{sd}. {sm}. {sy}, {st} – {et}"
            },
            "c01": {
                "f": "{sd}. {sm} {sy} ob {st} – {ed}. {em} {ey} ob {et}",
                "l": "{sd}. {sm} {sy} ob {st} – {ed}. {em} {ey} ob {et}",
                "m": "{sd}. {sm} {sy}, {st} – {ed}. {em} {ey}, {et}",
                "s": "{sd}. {sm}. {sy}, {st} – {ed}. {em}. {ey}, {et}"
            },
            "c02": {
                "f": "{sd}. {sm} {sy} ob {st} – {ed}. {em} {ey} ob {et}",
                "l": "{sd}. {sm} {sy} ob {st} – {ed}. {em} {ey} ob {et}",
                "m": "{sd}. {sm} {sy}, {st} – {ed}. {em} {ey}, {et}",
                "s": "{sd}. {sm}. {sy}, {st} – {ed}. {em}. {ey}, {et}"
            },
            "c03": {
                "f": "{sd}. {sm} {sy} ob {st} – {ed}. {em} {ey} ob {et}",
                "l": "{sd}. {sm} {sy} ob {st} – {ed}. {em} {ey} ob {et}",
                "m": "{sd}. {sm} {sy}, {st} – {ed}. {em} {ey}, {et}",
                "s": "{sd}. {sm}. {sy}, {st} – {ed}. {em}. {ey}, {et}"
            },
            "c10": {
                "f": "{sd} – {ed}. {em} {ey}",
                "l": "{sd} – {ed}. {em} {ey}",
                "m": "{sd} – {ed}. {em} {ey}",
                "s": "{sd} – {ed}. {em}. {ey}"
            },
            "c11": {
                "f": "{sd}. {sm} – {ed}. {em} {ey}",
                "l": "{sd}. {sm} – {ed}. {em} {ey}",
                "m": "{sd}. {sm} – {ed}. {em} {ey}",
                "s": "{sd}. {sm} – {ed}. {em}. {ey}"
            },
            "c12": {
                "f": "{sd}. {sm} {sy} – {ed}. {em} {ey}",
                "l": "{sd}. {sm} {sy} – {ed}. {em} {ey}",
                "m": "{sd}. {sm} {sy} – {ed}. {em} {ey}",
                "s": "{sd}. {sm}. {sy} – {ed}. {em}. {ey}"
            },
            "c20": {
                "m": "{sm} {sy} – {em} {ey}",
                "s": "{sm}. {sy} – {em}. {ey}"
            },
            "c30": {
                "f": "{sy} – {ey}",
                "l": "{sy} – {ey}",
                "m": "{sy} – {ey}",
                "s": "{sy} – {ey}"
            }
        },
        "time": {
            "12": {
                "ah": "h a"
            },
            "24": {
                "ah": "HH",
                "ahm": "HH:mm",
                "ahms": "HH:mm:ss",
                "ahmsz": "HH:mm:ss z",
                "ahmz": "HH:mm z",
                "h": "HH",
                "hm": "HH:mm",
                "hms": "HH:mm:ss",
                "hmsz": "HH:mm:ss z",
                "hmz": "HH:mm z"
            }
        }
    }
}
ilib.data.sysres_sl = {
    "#in {num}d": "one#čez {num} dan|two#čez {num} dneva|few#čez {num} dni|#čez {num} dni",
    "#in {num}h": "one#čez {num} uro|two#čez {num} uri|few#čez {num} ure|#čez {num} ur",
    "#in {num}mi": "one#čez {num} min.|two#čez {num} min.|few#čez {num} min.|#čez {num} min.",
    "#in {num}mo": "one#čez {num} mes.|two#čez {num} mes.|few#čez {num} mes.|#čez {num} mes.",
    "#in {num}s": "one#čez {num} s|two#čez {num} s|few#čez {num} s|#čez {num} s",
    "#in {num}w": "one#čez {num} ted.|two#čez {num} ted.|few#čez {num} ted.|#čez {num} ted.",
    "#in {num}y": "one#čez {num} leto|two#čez {num} leti|few#čez {num} leta|#čez {num} let",
    "#{num} ms": "#{num} ms",
    "#{num}d": "#{num} d",
    "#{num}d ago": "one#pred {num} dnevom|two#pred {num} dnevoma|few#pred {num} dnevi|#pred {num} dnevi",
    "#{num}h": "#{num} h",
    "#{num}h ago": "one#pred {num} uro|two#pred {num} urama|few#pred {num} urami|#pred {num} urami",
    "#{num}mi ago": "one#pred {num} min.|two#pred {num} min.|few#pred {num} min.|#pred {num} min.",
    "#{num}mo ago": "one#pred {num} mes.|two#pred {num} mes.|few#pred {num} mes.|#pred {num} mes.",
    "#{num}s": "one#{num} s|two#{num} s|few#{num} s|#{num} s",
    "#{num}s ago": "one#pred {num} s|two#pred {num} s|few#pred {num} s|#pred {num} s",
    "#{num}w": "one#{num} t|two#{num} t|few#{num} t|#{num} t",
    "#{num}w ago": "one#pred {num} ted.|two#pred {num} ted.|few#pred {num} ted.|#pred {num} ted.",
    "#{num}y": "one#{num} l|two#{num} l|few#{num} l|#{num} l",
    "#{num}y ago": "one#pred {num} letom|two#pred {num} letoma|few#pred {num} leti|#pred {num} leti",
    "1#1 day ago|#{num} days ago": "one#pred {num} dnevom|two#pred {num} dnevoma|few#pred {num} dnevi|#pred {num} dnevi",
    "1#1 day|#{num} days": "one#{num} dan|two#{num} dneva|few#{num} dni|#{num} dni",
    "1#1 dy ago|#{num} dys ago": "one#pred {num} dnevom|two#pred {num} dnevoma|few#pred {num} dnevi|#pred {num} dnevi",
    "1#1 dy|#{num} dys": "#{num} d",
    "1#1 hour ago|#{num} hours ago": "one#pred {num} uro|two#pred {num} urama|few#pred {num} urami|#pred {num} urami",
    "1#1 hour|#{num} hours": "one#{num} ura|two#{num} uri|few#{num} ure|#{num} ur",
    "1#1 hr ago|#{num} hrs ago": "one#pred {num} uro|two#pred {num} urama|few#pred {num} urami|#pred {num} urami",
    "1#1 hr|#{num} hrs": "#{num} h",
    "1#1 millisecond|#{num} milliseconds": "one#{num} milisekunda|two#{num} millisekundi|few#{num} milisekunde|#{num} milisekund",
    "1#1 min ago|#{num} min ago": "one#pred {num} minuto|two#pred {num} minutama|few#pred {num} minutami|#pred {num} minutami",
    "1#1 minute ago|#{num} minutes ago": "one#pred {num} minuto|two#pred {num} minutama|few#pred {num} minutami|#pred {num} minutami",
    "1#1 minute|#{num} minutes": "one#{num} minuta|two#{num} minuti|few#{num} minute|#{num} minut",
    "1#1 min|#{num} min": "#{num} min",
    "1#1 mi|#{num} min": "#{num} min",
    "1#1 mon ago|#{num} mons ago": "one#pred {num} mesecem|two#pred {num} mesecema|few#pred {num} meseci|#pred {num} meseci",
    "1#1 month ago|#{num} months ago": "one#pred {num} mesecem|two#pred {num} mesecema|few#pred {num} meseci|#pred {num} meseci",
    "1#1 month|#{num} months": "one#{num} mesec|two#{num} meseca|few#{num} meseci|#{num} mesecev",
    "1#1 mon|#{num} mons": "#{num} m",
    "1#1 mo|#{num} mos": "#{num} m",
    "1#1 sec ago|#{num} sec ago": "one#pred {num} sekundo|two#pred {num} sekundama|few#pred {num} sekundami|#pred {num} sekundami",
    "1#1 second ago|#{num} seconds ago": "one#pred {num} sekundo|two#pred {num} sekundama|few#pred {num} sekundami|#pred {num} sekundami",
    "1#1 second|#{num} seconds": "one#{num} sekunda|two#{num} sekundi|few#{num} sekunde|#{num} sekund",
    "1#1 sec|#{num} sec": "one#{num} sek.|two#{num} sek.|few#{num} sek.|#{num} sek.",
    "1#1 se|#{num} sec": "one#{num} s|two#{num} s|few#{num} s|#{num} s",
    "1#1 week ago|#{num} weeks ago": "one#pred {num} tednom|two#pred {num} tednoma|few#pred {num} tedni|#pred {num} tedni",
    "1#1 week|#{num} weeks": "one#{num} teden|two#{num} tedna|few#{num} tedni|#{num} tednov",
    "1#1 wk ago|#{num} wks ago": "one#pred {num} tednom|two#pred {num} tednoma|few#pred {num} tedni|#pred {num} tedni",
    "1#1 wk|#{num} wks": "one#{num} t|two#{num} t|few#{num} t|#{num} t",
    "1#1 year ago|#{num} years ago": "one#pred {num} letom|two#pred {num} letoma|few#pred {num} leti|#pred {num} leti",
    "1#1 year|#{num} years": "one#{num} leto|two#{num} leti|few#{num} let|#{num} let",
    "1#1 yr ago|#{num} yrs ago": "one#pred {num} letom|two#pred {num} letoma|few#pred {num} leti|#pred {num} leti",
    "1#1 yr|#{num} yrs": "one#{num} l|two#{num} l|few#{num} l|#{num} l",
    "1#in 1 day|#in {num} days": "one#čez {num} dan|two#čez {num} dneva|few#čez {num} dni|#čez {num} dni",
    "1#in 1 dy|#in {num} dys": "one#čez {num} dan|two#čez {num} dneva|few#čez {num} dni|#čez {num} dni",
    "1#in 1 hour|#in {num} hours": "one#čez {num} uro|two#čez {num} uri|few#čez {num} ure|#čez {num} ur",
    "1#in 1 hr|#in {num} hrs": "one#čez {num} uro|two#čez {num} uri|few#čez {num} ure|#čez {num} ur",
    "1#in 1 minute|#in {num} minutes": "one#čez {num} minuto|two#čez {num} minuti|few#čez {num} minute|#čez {num} minut",
    "1#in 1 min|#in {num} min": "one#čez {num} minuto|two#čez {num} minuti|few#čez {num} minute|#čez {num} minut",
    "1#in 1 month|#in {num} months": "one#čez {num} mesec|two#čez {num} meseca|few#čez {num} mesece|#čez {num} mesecev",
    "1#in 1 mon|#in {num} mons": "one#čez {num} mesec|two#čez {num} meseca|few#čez {num} mesece|#čez {num} mesecev",
    "1#in 1 second|#in {num} seconds": "one#čez {num} sekundo|two#čez {num} sekundi|few#čez {num} sekunde|#čez {num} sekund",
    "1#in 1 sec|#in {num} sec": "one#čez {num} sekundo|two#čez {num} sekundi|few#čez {num} sekunde|#čez {num} sekund",
    "1#in 1 week|#in {num} weeks": "one#čez {num} teden|two#čez {num} tedna|few#čez {num} tedne|#čez {num} tednov",
    "1#in 1 wk|#in {num} wks": "one#čez {num} teden|two#čez {num} tedna|few#čez {num} tedne|#čez {num} tednov",
    "1#in 1 year|#in {num} years": "one#čez {num} leto|two#čez {num} leti|few#čez {num} leta|#čez {num} let",
    "1#in 1 yr|#in {num} yrs": "one#čez {num} leto|two#čez {num} leti|few#čez {num} leta|#čez {num} let",
    "B0": "opolnoči",
    "B1": "dop.",
    "B2": "zjutraj",
    "B3": "dopoldan",
    "B4": "opoldne",
    "B5": "popoldan",
    "B6": "pop.",
    "B7": "zvečer",
    "B8": "ponoči",
    "E0": "n",
    "E1": "p",
    "E2": "t",
    "E3": "s",
    "E4": "č",
    "E5": "p",
    "E6": "s",
    "EE0": "ned.",
    "EE1": "pon.",
    "EE2": "tor.",
    "EE3": "sre.",
    "EE4": "čet.",
    "EE5": "pet.",
    "EE6": "sob.",
    "EEE0": "ned.",
    "EEE1": "pon.",
    "EEE2": "tor.",
    "EEE3": "sre.",
    "EEE4": "čet.",
    "EEE5": "pet.",
    "EEE6": "sob.",
    "EEEE0": "nedelja",
    "EEEE1": "ponedeljek",
    "EEEE2": "torek",
    "EEEE3": "sreda",
    "EEEE4": "četrtek",
    "EEEE5": "petek",
    "EEEE6": "sobota",
    "G-1": "pr. n. št.",
    "G1": "po n. št.",
    "MMM1": "jan.",
    "MMM10": "okt.",
    "MMM11": "nov.",
    "MMM12": "dec.",
    "MMM2": "feb.",
    "MMM3": "mar.",
    "MMM4": "apr.",
    "MMM5": "maj",
    "MMM6": "jun.",
    "MMM7": "jul.",
    "MMM8": "avg.",
    "MMM9": "sep.",
    "MMMM1": "januar",
    "MMMM10": "oktober",
    "MMMM11": "november",
    "MMMM12": "december",
    "MMMM2": "februar",
    "MMMM3": "marec",
    "MMMM4": "april",
    "MMMM5": "maj",
    "MMMM6": "junij",
    "MMMM7": "julij",
    "MMMM8": "avgust",
    "MMMM9": "september",
    "N1": "j",
    "N10": "o",
    "N11": "n",
    "N12": "d",
    "N2": "f",
    "N3": "m",
    "N4": "a",
    "N5": "m",
    "N6": "j",
    "N7": "j",
    "N8": "a",
    "N9": "s",
    "NN1": "ja",
    "NN10": "ok",
    "NN11": "no",
    "NN12": "de",
    "NN2": "fe",
    "NN3": "ma",
    "NN4": "ap",
    "NN5": "ma",
    "NN6": "ju",
    "NN7": "ju",
    "NN8": "av",
    "NN9": "se",
    "a0": "dop.",
    "a1": "pop.",
    "durationLongDays": "#{num} d",
    "durationMediumHours": "#{num} h",
    "durationMediumMillis": "#{num} ms",
    "durationMediumWeeks": "one#{num} t|two#{num} t|few#{num} t|#{num} t",
    "durationMediumYears": "one#{num} l|two#{num} l|few#{num} l|#{num} l",
    "durationShortMillis": "#{num} ms",
    "durationShortMinutes": "#{num} min",
    "durationShortMonths": "#{num} m",
    "finalSeparatorFull": " in ",
    "finalSeparatorLong": " in ",
    "finalSeparatorMedium": " in ",
    "finalSeparatorShort": " in ",
    "separatorMedium": ", ",
    "separatorShort": ", "
}
