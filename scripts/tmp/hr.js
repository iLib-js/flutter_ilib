ilib.data.plurals_hr = {
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
                                    10
                                ]
                            },
                            [
                                2,
                                4
                            ]
                        ]
                    },
                    {
                        "neq": [
                            {
                                "mod": [
                                    "i",
                                    100
                                ]
                            },
                            [
                                12,
                                14
                            ]
                        ]
                    }
                ]
            },
            {
                "and": [
                    {
                        "eq": [
                            {
                                "mod": [
                                    "f",
                                    10
                                ]
                            },
                            [
                                2,
                                4
                            ]
                        ]
                    },
                    {
                        "neq": [
                            {
                                "mod": [
                                    "f",
                                    100
                                ]
                            },
                            [
                                12,
                                14
                            ]
                        ]
                    }
                ]
            }
        ]
    },
    "one": {
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
                                    10
                                ]
                            },
                            1
                        ]
                    },
                    {
                        "neq": [
                            {
                                "mod": [
                                    "i",
                                    100
                                ]
                            },
                            11
                        ]
                    }
                ]
            },
            {
                "and": [
                    {
                        "eq": [
                            {
                                "mod": [
                                    "f",
                                    10
                                ]
                            },
                            1
                        ]
                    },
                    {
                        "neq": [
                            {
                                "mod": [
                                    "f",
                                    100
                                ]
                            },
                            11
                        ]
                    }
                ]
            }
        ]
    }
}
ilib.data.localeinfo_hr = {
    "delimiter": {
        "alternateQuotationEnd": "‘",
        "alternateQuotationStart": "‚",
        "quotationEnd": "“",
        "quotationStart": "„"
    },
    "language.name": "Croatian",
    "locale": "hr",
    "numfmt": {
        "currencyFormats": {
            "common": "{n} {s}",
            "commonNegative": "−{n} {s}"
        },
        "decimalChar": ",",
        "groupChar": ".",
        "negativenumFmt": "−{n}",
        "negativepctFmt": "−{n} %",
        "pctFmt": "{n} %"
    },
    "scripts": [
        "Latn"
    ]
}
ilib.data.localeinfo_und_HR = {
    "clock": "24",
    "currency": "EUR",
    "firstDayOfWeek": 1,
    "locale": "HR",
    "region.name": "Croatia",
    "timezone": "Europe/Zagreb"
}
ilib.data.dateformats_hr = {
    "dayPeriods": [
        {
            "at": 0
        },
        {
            "from": 0,
            "to": 720
        },
        {
            "from": 240,
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
            "to": 1260
        },
        {
            "from": 1260,
            "to": 240
        }
    ],
    "gregorian": {
        "date": {
            "d": {
                "f": "d",
                "l": "d",
                "m": "d",
                "s": "dd"
            },
            "dm": {
                "f": "d. MMMM",
                "l": "d. MMMM",
                "m": "d. MMM",
                "s": "dd. MM"
            },
            "dmw": {
                "f": "EEEE, d. MMMM",
                "l": "EEE, d. MMMM",
                "m": "EE, d. MMM",
                "s": "E, dd. MM"
            },
            "dmwy": {
                "f": "EEEE, d. MMMM yyyy.",
                "l": "EEE, d. MMMM yyyy.",
                "m": "EE, d. MMM yyyy.",
                "s": "E, dd. MM. yyyy."
            },
            "dmy": {
                "f": "d. MMMM yyyy.",
                "l": "d. MMMM yyyy.",
                "m": "d. MMM yyyy.",
                "s": "dd. MM. yyyy."
            },
            "dw": {
                "f": "EEEE, d",
                "l": "EEE, d",
                "m": "EE, d",
                "s": "E, dd"
            },
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            },
            "l": {
                "f": "LLLL",
                "l": "LLLL",
                "m": "LLL",
                "s": "LL"
            },
            "m": {
                "l": "MMMM",
                "m": "MMM",
                "s": "MM"
            },
            "my": {
                "f": "MMMM yyyy.",
                "l": "MMMM yyyy.",
                "m": "MMM yyyy.",
                "s": "MM. yyyy."
            },
            "mys": {
                "f": "LLLL yyyy.",
                "l": "LLLL yyyy.",
                "m": "LLL yyyy.",
                "s": "MM. yyyy."
            },
            "y": {
                "s": "yyyy"
            }
        },
        "order": {
            "f": "{date} 'u' {time}",
            "l": "{date} 'u' {time}",
            "m": "{date} {time}",
            "s": "{date} {time}"
        },
        "range": {
            "c00": {
                "f": "{sd}. {sm} {sy}. u {st} – {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {et}",
                "m": "{sd}. {sm} {sy}. {st} – {et}",
                "s": "{sd}. {sm}. {sy}. {st} – {et}"
            },
            "c01": {
                "f": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "m": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "s": "{sd}. {sm}. {sy}. {st} – {ed}. {em}. {ey}. {et}"
            },
            "c02": {
                "f": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "m": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "s": "{sd}. {sm}. {sy}. {st} – {ed}. {em}. {ey}. {et}"
            },
            "c03": {
                "f": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "m": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "s": "{sd}. {sm}. {sy}. {st} – {ed}. {em}. {ey}. {et}"
            },
            "c10": {
                "f": "{sd} – {ed}. {em} {ey}.",
                "l": "{sd} – {ed}. {em} {ey}.",
                "m": "{sd} – {ed}. {em} {ey}.",
                "s": "{sd} – {ed}. {em}. {ey}."
            },
            "c11": {
                "f": "{sd}. {sm} – {ed}. {em} {ey}.",
                "l": "{sd}. {sm} – {ed}. {em} {ey}.",
                "m": "{sd}. {sm} – {ed}. {em} {ey}.",
                "s": "{sd}. {sm} – {ed}. {em}. {ey}."
            },
            "c12": {
                "f": "{sd}. {sm} {sy}. – {ed}. {em} {ey}.",
                "l": "{sd}. {sm} {sy}. – {ed}. {em} {ey}.",
                "m": "{sd}. {sm} {sy}. – {ed}. {em} {ey}.",
                "s": "{sd}. {sm}. {sy}. – {ed}. {em}. {ey}."
            },
            "c20": {
                "f": "{sm} {sy}. – {em} {ey}.",
                "l": "{sm} {sy}. – {em} {ey}.",
                "m": "{sm} {sy}. – {em} {ey}.",
                "s": "{sm}. {sy}. – {em}. {ey}."
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
ilib.data.sysres_hr = {
    "#in {num}d": "one#za {num} dan|few#za {num} dana|#za {num} dana",
    "#in {num}h": "one#za {num} h|few#za {num} h|#za {num} h",
    "#in {num}mi": "one#za {num} min|few#za {num} min|#za {num} min",
    "#in {num}mo": "one#za {num} mj.|few#za {num} mj.|#za {num} mj.",
    "#in {num}s": "one#za {num} s|few#za {num} s|#za {num} s",
    "#in {num}w": "one#za {num} tj.|few#za {num} tj.|#za {num} tj.",
    "#in {num}y": "one#za {num} g.|few#za {num} g.|#za {num} g.",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num} d.|few#{num} d.|#{num} d.",
    "#{num}d ago": "one#prije {num} dan|few#prije {num} dana|#prije {num} dana",
    "#{num}h": "#{num} h",
    "#{num}h ago": "one#prije {num} h|few#prije {num} h|#prije {num} h",
    "#{num}mi ago": "one#prije {num} min|few#prije {num} min|#prije {num} min",
    "#{num}mo ago": "one#prije {num} mj.|few#prije {num} mj.|#prije {num} mj.",
    "#{num}s": "#{num} s",
    "#{num}s ago": "one#prije {num} s|few#prije {num} s|#prije {num} s",
    "#{num}w": "one#{num} tj.|few#{num} tj.|#{num} tj.",
    "#{num}w ago": "one#prije {num} tj.|few#prije {num} tj.|#prije {num} tj.",
    "#{num}y": "one#{num} g.|few#{num} g.|#{num} g.",
    "#{num}y ago": "one#prije {num} g.|few#prije {num} g.|#prije {num} g.",
    "1#1 day ago|#{num} days ago": "one#prije {num} dan|few#prije {num} dana|#prije {num} dana",
    "1#1 day|#{num} days": "one#{num} dan|few#{num} dana|#{num} dana",
    "1#1 dy ago|#{num} dys ago": "one#prije {num} dan|few#prije {num} dana|#prije {num} dana",
    "1#1 dy|#{num} dys": "one#{num} d.|few#{num} d.|#{num} d.",
    "1#1 hour ago|#{num} hours ago": "one#prije {num} sat|few#prije {num} sata|#prije {num} sati",
    "1#1 hour|#{num} hours": "one#{num} sat|few#{num} sata|#{num} sati",
    "1#1 hr ago|#{num} hrs ago": "one#prije {num} sat|few#prije {num} sata|#prije {num} sati",
    "1#1 hr|#{num} hrs": "#{num} h",
    "1#1 millisecond|#{num} milliseconds": "one#{num} milisekunda|few#{num} milisekunde|#{num} milisekundi",
    "1#1 min ago|#{num} min ago": "one#prije {num} minutu|few#prije {num} minute|#prije {num} minuta",
    "1#1 minute ago|#{num} minutes ago": "one#prije {num} minutu|few#prije {num} minute|#prije {num} minuta",
    "1#1 minute|#{num} minutes": "one#{num} minuta|few#{num} minute|#{num} minuta",
    "1#1 min|#{num} min": "#{num} min",
    "1#1 mi|#{num} min": "one#{num} m|few#{num} m|#{num} m",
    "1#1 mon ago|#{num} mons ago": "one#prije {num} mjesec|few#prije {num} mjeseca|#prije {num} mjeseci",
    "1#1 month ago|#{num} months ago": "one#prije {num} mjesec|few#prije {num} mjeseca|#prije {num} mjeseci",
    "1#1 month|#{num} months": "one#{num} mjesec|few#{num} mjeseca|#{num} mjeseci",
    "1#1 mon|#{num} mons": "one#{num} mj.|few#{num} mj.|#{num} mj.",
    "1#1 mo|#{num} mos": "one#{num} mj.|few#{num} mj.|#{num} mj.",
    "1#1 sec ago|#{num} sec ago": "one#prije {num} sekundu|few#prije {num} sekunde|#prije {num} sekundi",
    "1#1 second ago|#{num} seconds ago": "one#prije {num} sekundu|few#prije {num} sekunde|#prije {num} sekundi",
    "1#1 second|#{num} seconds": "one#{num} sekunda|few#{num} sekunde|#{num} sekundi",
    "1#1 sec|#{num} sec": "#{num} s",
    "1#1 se|#{num} sec": "#{num} s",
    "1#1 week ago|#{num} weeks ago": "one#prije {num} tjedan|few#prije {num} tjedna|#prije {num} tjedana",
    "1#1 week|#{num} weeks": "one#{num} tjedan|few#{num} tjedna|#{num} tjedana",
    "1#1 wk ago|#{num} wks ago": "one#prije {num} tjedan|few#prije {num} tjedna|#prije {num} tjedana",
    "1#1 wk|#{num} wks": "one#{num} tj.|few#{num} tj.|#{num} tj.",
    "1#1 year ago|#{num} years ago": "one#prije {num} godinu|few#prije {num} godine|#prije {num} godina",
    "1#1 year|#{num} years": "one#{num} godina|few#{num} godine|#{num} godina",
    "1#1 yr ago|#{num} yrs ago": "one#prije {num} godinu|few#prije {num} godine|#prije {num} godina",
    "1#1 yr|#{num} yrs": "one#{num} g.|few#{num} g.|#{num} g.",
    "1#in 1 day|#in {num} days": "one#za {num} dan|few#za {num} dana|#za {num} dana",
    "1#in 1 dy|#in {num} dys": "one#za {num} dan|few#za {num} dana|#za {num} dana",
    "1#in 1 hour|#in {num} hours": "one#za {num} sat|few#za {num} sata|#za {num} sati",
    "1#in 1 hr|#in {num} hrs": "one#za {num} sat|few#za {num} sata|#za {num} sati",
    "1#in 1 minute|#in {num} minutes": "one#za {num} minutu|few#za {num} minute|#za {num} minuta",
    "1#in 1 min|#in {num} min": "one#za {num} minutu|few#za {num} minute|#za {num} minuta",
    "1#in 1 month|#in {num} months": "one#za {num} mjesec|few#za {num} mjeseca|#za {num} mjeseci",
    "1#in 1 mon|#in {num} mons": "one#za {num} mjesec|few#za {num} mjeseca|#za {num} mjeseci",
    "1#in 1 second|#in {num} seconds": "one#za {num} sekundu|few#za {num} sekunde|#za {num} sekundi",
    "1#in 1 sec|#in {num} sec": "one#za {num} sekundu|few#za {num} sekunde|#za {num} sekundi",
    "1#in 1 week|#in {num} weeks": "one#za {num} tjedan|few#za {num} tjedna|#za {num} tjedana",
    "1#in 1 wk|#in {num} wks": "one#za {num} tjedan|few#za {num} tjedna|#za {num} tjedana",
    "1#in 1 year|#in {num} years": "one#za {num} godinu|few#za {num} godine|#za {num} godina",
    "1#in 1 yr|#in {num} yrs": "one#za {num} godinu|few#za {num} godine|#za {num} godina",
    "B0": "ponoć",
    "B1": "AM",
    "B2": "ujutro",
    "B3": "podne",
    "B4": "poslije podne",
    "B5": "PM",
    "B6": "navečer",
    "B7": "noću",
    "E0": "N",
    "E1": "P",
    "E2": "U",
    "E3": "S",
    "E4": "Č",
    "E5": "P",
    "EE0": "ned",
    "EE1": "pon",
    "EE2": "uto",
    "EE3": "sri",
    "EE4": "čet",
    "EE5": "pet",
    "EE6": "sub",
    "EEE0": "ned",
    "EEE1": "pon",
    "EEE2": "uto",
    "EEE3": "sri",
    "EEE4": "čet",
    "EEE5": "pet",
    "EEE6": "sub",
    "EEEE0": "nedjelja",
    "EEEE1": "ponedjeljak",
    "EEEE2": "utorak",
    "EEEE3": "srijeda",
    "EEEE4": "četvrtak",
    "EEEE5": "petak",
    "EEEE6": "subota",
    "G-1": "pr. n. e.",
    "G1": "n. e.",
    "L1": "1.",
    "L10": "10.",
    "L11": "11.",
    "L12": "12.",
    "L2": "2.",
    "L3": "3.",
    "L4": "4.",
    "L5": "5.",
    "L6": "6.",
    "L7": "7.",
    "L8": "8.",
    "L9": "9.",
    "LL1": "si",
    "LL10": "li",
    "LL11": "st",
    "LL12": "pr",
    "LL2": "ve",
    "LL3": "ož",
    "LL4": "tr",
    "LL5": "sv",
    "LL6": "li",
    "LL7": "sr",
    "LL8": "ko",
    "LL9": "ru",
    "LLL1": "sij",
    "LLL10": "lis",
    "LLL11": "stu",
    "LLL12": "pro",
    "LLL2": "velj",
    "LLL3": "ožu",
    "LLL4": "tra",
    "LLL5": "svi",
    "LLL6": "lip",
    "LLL7": "srp",
    "LLL8": "kol",
    "LLL9": "ruj",
    "LLLL1": "siječanj",
    "LLLL10": "listopad",
    "LLLL11": "studeni",
    "LLLL12": "prosinac",
    "LLLL2": "veljača",
    "LLLL3": "ožujak",
    "LLLL4": "travanj",
    "LLLL5": "svibanj",
    "LLLL6": "lipanj",
    "LLLL7": "srpanj",
    "LLLL8": "kolovoz",
    "LLLL9": "rujan",
    "MMM1": "sij",
    "MMM10": "lis",
    "MMM11": "stu",
    "MMM12": "pro",
    "MMM2": "velj",
    "MMM3": "ožu",
    "MMM4": "tra",
    "MMM5": "svi",
    "MMM6": "lip",
    "MMM7": "srp",
    "MMM8": "kol",
    "MMM9": "ruj",
    "MMMM1": "siječnja",
    "MMMM10": "listopada",
    "MMMM11": "studenoga",
    "MMMM12": "prosinca",
    "MMMM2": "veljače",
    "MMMM3": "ožujka",
    "MMMM4": "travnja",
    "MMMM5": "svibnja",
    "MMMM6": "lipnja",
    "MMMM7": "srpnja",
    "MMMM8": "kolovoza",
    "MMMM9": "rujna",
    "N1": "s",
    "N10": "l",
    "N11": "s",
    "N12": "p",
    "N2": "v",
    "N3": "o",
    "N4": "t",
    "N5": "s",
    "N6": "l",
    "N7": "s",
    "N8": "k",
    "N9": "r",
    "NN1": "si",
    "NN10": "li",
    "NN11": "st",
    "NN12": "pr",
    "NN2": "ve",
    "NN3": "ož",
    "NN4": "tr",
    "NN5": "sv",
    "NN6": "li",
    "NN7": "sr",
    "NN8": "ko",
    "NN9": "ru",
    "c0": "n",
    "c1": "p",
    "c2": "u",
    "c3": "s",
    "c4": "č",
    "c5": "p",
    "c6": "s",
    "cc0": "ned",
    "cc1": "pon",
    "cc2": "uto",
    "cc3": "sri",
    "cc4": "čet",
    "cc5": "pet",
    "cc6": "sub",
    "ccc0": "ned",
    "ccc1": "pon",
    "ccc2": "uto",
    "ccc3": "sri",
    "ccc4": "čet",
    "ccc5": "pet",
    "ccc6": "sub",
    "cccc0": "nedjelja",
    "cccc1": "ponedjeljak",
    "cccc2": "utorak",
    "cccc3": "srijeda",
    "cccc4": "četvrtak",
    "cccc5": "petak",
    "cccc6": "subota",
    "durationLongDays": "one#{num} dan|few#{num} dana|#{num} dana",
    "durationMediumHours": "#{num} h",
    "durationMediumMillis": "#{num} ms",
    "durationMediumWeeks": "one#{num} tj.|few#{num} tj.|#{num} tj.",
    "durationMediumYears": "one#{num} g.|few#{num} g.|#{num} g.",
    "durationShortMillis": "#{num} ms",
    "durationShortMinutes": "one#{num} m|few#{num} m|#{num} m",
    "durationShortMonths": "one#{num} mj.|few#{num} mj.|#{num} mj.",
    "finalSeparatorFull": " i ",
    "finalSeparatorLong": " i ",
    "finalSeparatorMedium": " i ",
    "finalSeparatorShort": " ",
    "separatorMedium": ", "
}
ilib.data.localeinfo_und_ME = {
    "clock": "24",
    "currency": "EUR",
    "firstDayOfWeek": 1,
    "locale": "ME",
    "region.name": "Montenegro",
    "timezone": "Europe/Podgorica"
}
