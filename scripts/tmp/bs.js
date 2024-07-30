ilib.data.plurals_bs = {
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
ilib.data.localeinfo_bs = {
    "delimiter": {
        "quotationStart": "„"
    },
    "language.name": "Bosnian",
    "locale": "bs",
    "numfmt": {
        "currencyFormats": {
            "common": "{n} {s}",
            "commonNegative": "-{n} {s}"
        },
        "decimalChar": ",",
        "groupChar": "."
    },
    "scripts": [
        "Cyrl",
        "Latn"
    ]
}
ilib.data.localeinfo_und_BA = {
    "clock": "24",
    "currency": "BAM",
    "firstDayOfWeek": 1,
    "locale": "BA",
    "region.name": "Bosnia & Herzegovina",
    "timezone": "Europe/Sarajevo"
}
ilib.data.dateformats_bs = {
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
                "f": "EEEE, d. MMMM yyyy.",
                "l": "EEE, d. MMMM yyyy.",
                "m": "EE, d. MMM yyyy.",
                "s": "E, d. M. yyyy."
            },
            "dmy": {
                "f": "d. MMMM yyyy.",
                "l": "d. MMMM yyyy.",
                "m": "d. MMM yyyy.",
                "s": "d. M. yyyy."
            },
            "dw": {
                "f": "EEEE, d",
                "l": "EEE, d",
                "m": "EE, d",
                "s": "E, d"
            },
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            },
            "m": {
                "l": "MMMM",
                "m": "MMM"
            },
            "my": {
                "f": "MMMM yyyy.",
                "l": "MMMM yyyy.",
                "m": "MMM yyyy.",
                "s": "M. yyyy."
            },
            "y": {
                "s": "yyyy"
            }
        },
        "order": "{date} 'u' {time}",
        "range": {
            "c00": {
                "f": "{sd}. {sm} {sy}. u {st} – {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {et}",
                "m": "{sd}. {sm} {sy}. u {st} – {et}",
                "s": "{sd}. {sm}. {sy}. u {st} – {et}"
            },
            "c01": {
                "f": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "m": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "s": "{sd}. {sm}. {sy}. u {st} – {ed}. {em}. {ey}. u {et}"
            },
            "c02": {
                "f": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "m": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "s": "{sd}. {sm}. {sy}. u {st} – {ed}. {em}. {ey}. u {et}"
            },
            "c03": {
                "f": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "l": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "m": "{sd}. {sm} {sy}. u {st} – {ed}. {em} {ey}. u {et}",
                "s": "{sd}. {sm}. {sy}. u {st} – {ed}. {em}. {ey}. u {et}"
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
ilib.data.dateformats_bs_Latn = {
    "gregorian": {
        "date": {
            "l": {
                "f": "LLLL",
                "l": "LLLL",
                "m": "LLL",
                "s": "L"
            },
            "mys": {
                "f": "LLLL yyyy.",
                "l": "LLLL yyyy.",
                "m": "LLL yyyy.",
                "s": "M. yyyy."
            }
        }
    }
}
ilib.data.sysres_bs = {
    "#in {num}d": "one#za {num} d.|few#za {num} d.|#za {num} d.",
    "#in {num}h": "one#za {num} sat|few#za {num} sata|#za {num} sati",
    "#in {num}mi": "one#za {num} min.|few#za {num} min.|#za {num} min.",
    "#in {num}mo": "one#za {num} mj.|few#za {num} mj.|#za {num} mj.",
    "#in {num}s": "one#za {num} sek.|few#za {num} sek.|#za {num} sek.",
    "#in {num}w": "one#za {num} sed.|few#za {num} sed.|#za {num} sed.",
    "#in {num}y": "one#za {num} god.|few#za {num} god.|#za {num} god.",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num} d.|few#{num} d.|#{num} d.",
    "#{num}d ago": "one#prije {num} d.|few#prije {num} d.|#prije {num} d.",
    "#{num}h": "#{num} h",
    "#{num}h ago": "one#prije {num} sat|few#prije {num} sata|#prije {num} sati",
    "#{num}mi ago": "one#prije {num} min.|few#prije {num} min.|#prije {num} min.",
    "#{num}mo ago": "one#prije {num} mj.|few#prije {num} mj.|#prije {num} mj.",
    "#{num}s": "one#{num} s|few#{num} s|#{num} s",
    "#{num}s ago": "one#prije {num} sek.|few#prije {num} sek.|#prije {num} sek.",
    "#{num}w": "one#{num} sedm.|few#{num} sedm.|#{num} sedm.",
    "#{num}w ago": "one#prije {num} sed.|few#prije {num} sed.|#prije {num} sed.",
    "#{num}y": "one#{num} god.|few#{num} god.|#{num} god.",
    "#{num}y ago": "one#prije {num} god.|few#prije {num} god.|#prije {num} god.",
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
    "1#1 min|#{num} min": "one#{num} min.|few#{num} min.|#{num} min.",
    "1#1 mi|#{num} min": "one#{num} m|few#{num} m|#{num} m",
    "1#1 mon ago|#{num} mons ago": "one#prije {num} mjesec|few#prije {num} mjeseca|#prije {num} mjeseci",
    "1#1 month ago|#{num} months ago": "one#prije {num} mjesec|few#prije {num} mjeseca|#prije {num} mjeseci",
    "1#1 month|#{num} months": "one#{num} mjesec|few#{num} mjeseca|#{num} mjeseci",
    "1#1 mon|#{num} mons": "one#{num} mj.|few#{num} mj.|#{num} mj.",
    "1#1 mo|#{num} mos": "one#{num} mj.|few#{num} mj.|#{num} mj.",
    "1#1 sec ago|#{num} sec ago": "one#prije {num} sekundu|few#prije {num} sekunde|#prije {num} sekundi",
    "1#1 second ago|#{num} seconds ago": "one#prije {num} sekundu|few#prije {num} sekunde|#prije {num} sekundi",
    "1#1 second|#{num} seconds": "one#{num} sekunda|few#{num} sekunde|#{num} sekundi",
    "1#1 sec|#{num} sec": "one#{num} sek.|few#{num} sek.|#{num} sek.",
    "1#1 se|#{num} sec": "one#{num} s|few#{num} s|#{num} s",
    "1#1 week ago|#{num} weeks ago": "one#prije {num} sedmicu|few#prije {num} sedmice|#prije {num} sedmica",
    "1#1 week|#{num} weeks": "one#{num} sedmica|few#{num} sedmice|#{num} sedmica",
    "1#1 wk ago|#{num} wks ago": "one#prije {num} sedmicu|few#prije {num} sedmice|#prije {num} sedmica",
    "1#1 wk|#{num} wks": "one#{num} sedm.|few#{num} sedm.|#{num} sedm.",
    "1#1 year ago|#{num} years ago": "one#prije {num} godinu|few#prije {num} godine|#prije {num} godina",
    "1#1 year|#{num} years": "one#{num} godina|few#{num} godine|#{num} godina",
    "1#1 yr ago|#{num} yrs ago": "one#prije {num} godinu|few#prije {num} godine|#prije {num} godina",
    "1#1 yr|#{num} yrs": "one#{num} god.|few#{num} god.|#{num} god.",
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
    "1#in 1 week|#in {num} weeks": "one#za {num} sedmicu|few#za {num} sedmice|#za {num} sedmica",
    "1#in 1 wk|#in {num} wks": "one#za {num} sedmicu|few#za {num} sedmice|#za {num} sedmica",
    "1#in 1 year|#in {num} years": "one#za {num} godinu|few#za {num} godine|#za {num} godina",
    "1#in 1 yr|#in {num} yrs": "one#za {num} godinu|few#za {num} godine|#za {num} godina",
    "B0": "ponoć",
    "B1": "prijepodne",
    "B2": "ujutro",
    "B3": "podne",
    "B4": "poslijepodne",
    "B5": "popodne",
    "B6": "navečer",
    "B7": "po noći",
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
    "G-1": "p. n. e.",
    "G1": "n.e.",
    "MMM1": "jan",
    "MMM10": "okt",
    "MMM11": "nov",
    "MMM12": "dec",
    "MMM2": "feb",
    "MMM3": "mar",
    "MMM4": "apr",
    "MMM5": "maj",
    "MMM6": "jun",
    "MMM7": "jul",
    "MMM8": "aug",
    "MMM9": "sep",
    "MMMM1": "januar",
    "MMMM10": "oktobar",
    "MMMM11": "novembar",
    "MMMM12": "decembar",
    "MMMM2": "februar",
    "MMMM3": "mart",
    "MMMM4": "april",
    "MMMM5": "maj",
    "MMMM6": "juni",
    "MMMM7": "juli",
    "MMMM8": "august",
    "MMMM9": "septembar",
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
    "NN8": "au",
    "NN9": "se",
    "a0": "prijepodne",
    "a1": "popodne",
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
    "durationMediumWeeks": "one#{num} sedm.|few#{num} sedm.|#{num} sedm.",
    "durationMediumYears": "one#{num} god.|few#{num} god.|#{num} god.",
    "durationShortMillis": "#{num} ms",
    "durationShortMinutes": "one#{num} m|few#{num} m|#{num} m",
    "durationShortMonths": "one#{num} mj.|few#{num} mj.|#{num} mj.",
    "finalSeparatorFull": " i ",
    "finalSeparatorLong": " i ",
    "finalSeparatorMedium": " i ",
    "finalSeparatorShort": " i ",
    "separatorMedium": ", ",
    "separatorShort": ", "
}
ilib.data.sysres_bs_Latn = {
    "L1": "j",
    "L10": "o",
    "L11": "n",
    "L12": "d",
    "L2": "f",
    "L3": "m",
    "L4": "a",
    "L5": "m",
    "L6": "j",
    "L7": "j",
    "L8": "a",
    "L9": "s",
    "LL1": "ja",
    "LL10": "ok",
    "LL11": "no",
    "LL12": "de",
    "LL2": "fe",
    "LL3": "ma",
    "LL4": "ap",
    "LL5": "ma",
    "LL6": "ju",
    "LL7": "ju",
    "LL8": "au",
    "LL9": "se",
    "LLL1": "jan",
    "LLL10": "okt",
    "LLL11": "nov",
    "LLL12": "dec",
    "LLL2": "feb",
    "LLL3": "mar",
    "LLL4": "apr",
    "LLL5": "maj",
    "LLL6": "jun",
    "LLL7": "jul",
    "LLL8": "aug",
    "LLL9": "sep",
    "LLLL1": "januar",
    "LLLL10": "oktobar",
    "LLLL11": "novembar",
    "LLLL12": "decembar",
    "LLLL2": "februar",
    "LLLL3": "mart",
    "LLLL4": "april",
    "LLLL5": "maj",
    "LLLL6": "juni",
    "LLLL7": "juli",
    "LLLL8": "august",
    "LLLL9": "septembar"
}
ilib.data.localeinfo_und_ME = {
    "clock": "24",
    "currency": "EUR",
    "firstDayOfWeek": 1,
    "locale": "ME",
    "region.name": "Montenegro",
    "timezone": "Europe/Podgorica"
}
