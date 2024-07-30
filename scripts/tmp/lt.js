ilib.data.plurals_lt = {
    "few": {
        "and": [
            {
                "eq": [
                    {
                        "mod": [
                            "n",
                            10
                        ]
                    },
                    [
                        2,
                        9
                    ]
                ]
            },
            {
                "neq": [
                    {
                        "mod": [
                            "n",
                            100
                        ]
                    },
                    [
                        11,
                        19
                    ]
                ]
            }
        ]
    },
    "many": {
        "neq": [
            "f",
            0
        ]
    },
    "one": {
        "and": [
            {
                "eq": [
                    {
                        "mod": [
                            "n",
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
                            "n",
                            100
                        ]
                    },
                    [
                        11,
                        19
                    ]
                ]
            }
        ]
    }
}
ilib.data.localeinfo_lt = {
    "delimiter": {
        "alternateQuotationEnd": "“",
        "alternateQuotationStart": "„",
        "quotationEnd": "“",
        "quotationStart": "„"
    },
    "language.name": "Lithuanian",
    "locale": "lt",
    "numfmt": {
        "currencyFormats": {
            "common": "{n} {s}",
            "commonNegative": "−{n} {s}"
        },
        "decimalChar": ",",
        "exponential": "×10^",
        "groupChar": " ",
        "negativenumFmt": "−{n}",
        "negativepctFmt": "−{n} %",
        "pctFmt": "{n} %"
    },
    "scripts": [
        "Latn"
    ]
}
ilib.data.localeinfo_und_LT = {
    "clock": "24",
    "currency": "EUR",
    "firstDayOfWeek": 1,
    "locale": "LT",
    "region.name": "Lithuania",
    "timezone": "Europe/Vilnius"
}
ilib.data.dateformats_lt = {
    "dayPeriods": [
        {
            "at": 0
        },
        {
            "from": 0,
            "to": 360
        },
        {
            "from": 0,
            "to": 720
        },
        {
            "from": 360,
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
            "to": 1440
        }
    ],
    "gregorian": {
        "date": {
            "d": {
                "f": "d",
                "l": "d",
                "m": "dd",
                "s": "dd"
            },
            "dm": {
                "f": "MMMM d 'd'.",
                "l": "MMMM d 'd'.",
                "m": "MM-dd",
                "s": "MM-dd"
            },
            "dmw": {
                "f": "MMMM d 'd'., EEEE",
                "l": "MMMM d 'd'., EEE",
                "m": "MM-dd, EE",
                "s": "MM-dd, E"
            },
            "dmwy": {
                "f": "yyyy 'm'. MMMM d 'd'., EEEE",
                "l": "yyyy 'm'. MMMM d 'd'., EEE",
                "m": "yyyy-MM-dd, EE",
                "s": "yyyy-MM-dd, E"
            },
            "dmy": {
                "f": "yyyy 'm'. MMMM d 'd'.",
                "l": "yyyy 'm'. MMMM d 'd'.",
                "m": "yyyy-MM-dd",
                "s": "yyyy-MM-dd"
            },
            "dw": {
                "f": "d 'd'., EEEE",
                "l": "d 'd'., EEE",
                "m": "dd, EE",
                "s": "dd, E"
            },
            "l": {
                "f": "LLLL",
                "l": "LLLL",
                "m": "LL",
                "s": "LL"
            },
            "m": {
                "l": "MMMM",
                "s": "MM"
            },
            "my": {
                "f": "yyyy 'm'. MMMM",
                "l": "yyyy 'm'. MMMM",
                "m": "yyyy-MM",
                "s": "yyyy-MM"
            },
            "mys": {
                "f": "yyyy 'm'. LLLL",
                "l": "yyyy 'm'. LLLL",
                "m": "yyyy-MM",
                "s": "yyyy-MM"
            },
            "y": {
                "s": "yyyy"
            }
        },
        "range": {
            "c00": {
                "f": "{sy} m. {sm} {sd} d. {st} – {et}",
                "l": "{sy} m. {sm} {sd} d. {st} – {et}",
                "m": "{sy}-{sm}-{sd} {st} – {et}",
                "s": "{sy}-{sm}-{sd} {st} – {et}"
            },
            "c01": {
                "f": "{sy} m. {sm} {sd} d. {st} – {ey} m. {em} {ed} d. {et}",
                "l": "{sy} m. {sm} {sd} d. {st} – {ey} m. {em} {ed} d. {et}",
                "m": "{sy}-{sm}-{sd} {st} – {ey}-{em}-{ed} {et}",
                "s": "{sy}-{sm}-{sd} {st} – {ey}-{em}-{ed} {et}"
            },
            "c02": {
                "f": "{sy} m. {sm} {sd} d. {st} – {ey} m. {em} {ed} d. {et}",
                "l": "{sy} m. {sm} {sd} d. {st} – {ey} m. {em} {ed} d. {et}",
                "m": "{sy}-{sm}-{sd} {st} – {ey}-{em}-{ed} {et}",
                "s": "{sy}-{sm}-{sd} {st} – {ey}-{em}-{ed} {et}"
            },
            "c03": {
                "f": "{sy} m. {sm} {sd} d. {st} – {ey} m. {em} {ed} d. {et}",
                "l": "{sy} m. {sm} {sd} d. {st} – {ey} m. {em} {ed} d. {et}",
                "m": "{sy}-{sm}-{sd} {st} – {ey}-{em}-{ed} {et}",
                "s": "{sy}-{sm}-{sd} {st} – {ey}-{em}-{ed} {et}"
            },
            "c10": {
                "f": "{sy} m. {sm} {sd} d. – {ed} d.",
                "l": "{sy} m. {sm} {sd} d. – {ed} d.",
                "m": "{sy}-{sm}-{sd} – {ed}",
                "s": "{sy}-{sm}-{sd} – {ed}"
            },
            "c11": {
                "f": "{sy} m. {sm} {sd} d. – {em} {ed} d.",
                "l": "{sy} m. {sm} {sd} d. – {em} {ed} d.",
                "m": "{sy}-{sm}-{sd} – {ey}-{em}-{ed}",
                "s": "{sy}-{sm}-{sd} – {ey}-{em}-{ed}"
            },
            "c12": {
                "f": "{sy} m. {sm} {sd} d. – {ey} m. {em} {ed} d.",
                "l": "{sy} m. {sm} {sd} d. – {ey} m. {em} {ed} d.",
                "m": "{sy}-{sm}-{sd} – {ey}-{em}-{ed}",
                "s": "{sy}-{sm}-{sd} – {ey}-{em}-{ed}"
            },
            "c20": {
                "f": "{sy} m. {sm} – {ey} m. {em}",
                "l": "{sy} m. {sm} – {ey} m. {em}",
                "m": "{sy}-{sm} – {ey}-{em}",
                "s": "{sy}-{sm} – {ey}-{em}"
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
                "ah": "hh a",
                "ahm": "hh:mma",
                "ahms": "hh:mm:ssa",
                "ahmsz": "hh:mm:ssa z",
                "ahmz": "hh:mma z",
                "h": "hh",
                "hm": "hh:mm",
                "hms": "hh:mm:ss",
                "hmsz": "hh:mm:ss z",
                "hmz": "hh:mm z"
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
ilib.data.sysres_lt = {
    "#in {num}d": "one#po {num} d.|few#po {num} d.|many#po {num} d.|#po {num} d.",
    "#in {num}h": "one#po {num} val.|few#po {num} val.|many#po {num} val.|#po {num} val.",
    "#in {num}mi": "one#po {num} min.|few#po {num} min.|many#po {num} min.|#po {num} min.",
    "#in {num}mo": "one#po {num} mėn.|few#po {num} mėn.|many#po {num} mėn.|#po {num} mėn.",
    "#in {num}s": "one#po {num} sek.|few#po {num} sek.|many#po {num} sek.|#po {num} sek.",
    "#in {num}w": "one#po {num} sav.|few#po {num} sav.|many#po {num} sav.|#po {num} sav.",
    "#in {num}y": "one#po {num} m.|few#po {num} m.|many#po {num} m.|#po {num} m.",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num} d.|few#{num} d.|many#{num} d.|#{num} d.",
    "#{num}d ago": "one#prieš {num} d.|few#prieš {num} d.|many#prieš {num} d.|#prieš {num} d.",
    "#{num}h": "one#{num} h|few#{num} h|many#{num} h|#{num} h",
    "#{num}h ago": "one#prieš {num} val.|few#prieš {num} val.|many#prieš {num} val.|#prieš {num} val.",
    "#{num}mi ago": "one#prieš {num} min.|few#prieš {num} min.|many#prieš {num} min.|#prieš {num} min.",
    "#{num}mo ago": "one#prieš {num} mėn.|few#prieš {num} mėn.|many#prieš {num} mėn.|#prieš {num} mėn.",
    "#{num}s": "one#{num} s|few#{num} s|many#{num} s|#{num} s",
    "#{num}s ago": "one#prieš {num} sek.|few#prieš {num} sek.|many#prieš {num} sek.|#prieš {num} sek.",
    "#{num}w": "one#{num} sav.|few#{num} sav.|many#{num} sav.|#{num} sav.",
    "#{num}w ago": "one#prieš {num} sav.|few#prieš {num} sav.|many#prieš {num} sav.|#prieš {num} sav.",
    "#{num}y": "one#{num} m.|few#{num} m.|many#{num} m.|#{num} m.",
    "#{num}y ago": "one#prieš {num} m.|few#prieš {num} m.|many#prieš {num} m.|#prieš {num} m.",
    "1#1 day ago|#{num} days ago": "one#prieš {num} dieną|few#prieš {num} dienas|many#prieš {num} dienos|#prieš {num} dienų",
    "1#1 day|#{num} days": "one#{num} diena|few#{num} dienos|many#{num} dienos|#{num} dienų",
    "1#1 dy ago|#{num} dys ago": "one#prieš {num} dieną|few#prieš {num} dienas|many#prieš {num} dienos|#prieš {num} dienų",
    "1#1 dy|#{num} dys": "one#{num} d.|few#{num} d.|many#{num} d.|#{num} d.",
    "1#1 hour ago|#{num} hours ago": "one#prieš {num} valandą|few#prieš {num} valandas|many#prieš {num} valandos|#prieš {num} valandų",
    "1#1 hour|#{num} hours": "one#{num} valanda|few#{num} valandos|many#{num} valandos|#{num} valandų",
    "1#1 hr ago|#{num} hrs ago": "one#prieš {num} valandą|few#prieš {num} valandas|many#prieš {num} valandos|#prieš {num} valandų",
    "1#1 hr|#{num} hrs": "one#{num} val.|few#{num} val.|many#{num} val.|#{num} val.",
    "1#1 millisecond|#{num} milliseconds": "one#{num} milisekundė|few#{num} milisekundės|many#{num} milisekundės|#{num} milisekundžių",
    "1#1 min ago|#{num} min ago": "one#prieš {num} minutę|few#prieš {num} minutes|many#prieš {num} minutės|#prieš {num} minučių",
    "1#1 minute ago|#{num} minutes ago": "one#prieš {num} minutę|few#prieš {num} minutes|many#prieš {num} minutės|#prieš {num} minučių",
    "1#1 minute|#{num} minutes": "one#{num} minutė|few#{num} minutės|many#{num} minutės|#{num} minučių",
    "1#1 min|#{num} min": "one#{num} min.|few#{num} min.|many#{num} min.|#{num} min.",
    "1#1 mi|#{num} min": "one#{num} min.|few#{num} min.|many#{num} min.|#{num} min.",
    "1#1 mon ago|#{num} mons ago": "one#prieš {num} mėnesį|few#prieš {num} mėnesius|many#prieš {num} mėnesio|#prieš {num} mėnesių",
    "1#1 month ago|#{num} months ago": "one#prieš {num} mėnesį|few#prieš {num} mėnesius|many#prieš {num} mėnesio|#prieš {num} mėnesių",
    "1#1 month|#{num} months": "one#{num} mėnuo|few#{num} mėnesiai|many#{num} mėnesio|#{num} mėnesių",
    "1#1 mon|#{num} mons": "one#{num} mėn.|few#{num} mėn.|many#{num} mėn.|#{num} mėn.",
    "1#1 mo|#{num} mos": "one#{num} mėn.|few#{num} mėn.|many#{num} mėn.|#{num} mėn.",
    "1#1 sec ago|#{num} sec ago": "one#prieš {num} sekundę|few#prieš {num} sekundes|many#prieš {num} sekundės|#prieš {num} sekundžių",
    "1#1 second ago|#{num} seconds ago": "one#prieš {num} sekundę|few#prieš {num} sekundes|many#prieš {num} sekundės|#prieš {num} sekundžių",
    "1#1 second|#{num} seconds": "one#{num} sekundė|few#{num} sekundės|many#{num} sekundės|#{num} sekundžių",
    "1#1 sec|#{num} sec": "one#{num} sek.|few#{num} sek.|many#{num} sek.|#{num} sek.",
    "1#1 se|#{num} sec": "one#{num} s|few#{num} s|many#{num} s|#{num} s",
    "1#1 week ago|#{num} weeks ago": "one#prieš {num} savaitę|few#prieš {num} savaites|many#prieš {num} savaitės|#prieš {num} savaičių",
    "1#1 week|#{num} weeks": "one#{num} savaitė|few#{num} savaitės|many#{num} savaitės|#{num} savaičių",
    "1#1 wk ago|#{num} wks ago": "one#prieš {num} savaitę|few#prieš {num} savaites|many#prieš {num} savaitės|#prieš {num} savaičių",
    "1#1 wk|#{num} wks": "one#{num} sav.|few#{num} sav.|many#{num} sav.|#{num} sav.",
    "1#1 year ago|#{num} years ago": "one#prieš {num} metus|few#prieš {num} metus|many#prieš {num} metų|#prieš {num} metų",
    "1#1 year|#{num} years": "one#{num} metai|few#{num} metai|many#{num} metų|#{num} metų",
    "1#1 yr ago|#{num} yrs ago": "one#prieš {num} metus|few#prieš {num} metus|many#prieš {num} metų|#prieš {num} metų",
    "1#1 yr|#{num} yrs": "one#{num} m.|few#{num} m.|many#{num} m.|#{num} m.",
    "1#in 1 day|#in {num} days": "one#po {num} dienos|few#po {num} dienų|many#po {num} dienos|#po {num} dienų",
    "1#in 1 dy|#in {num} dys": "one#po {num} dienos|few#po {num} dienų|many#po {num} dienos|#po {num} dienų",
    "1#in 1 hour|#in {num} hours": "one#po {num} valandos|few#po {num} valandų|many#po {num} valandos|#po {num} valandų",
    "1#in 1 hr|#in {num} hrs": "one#po {num} valandos|few#po {num} valandų|many#po {num} valandos|#po {num} valandų",
    "1#in 1 minute|#in {num} minutes": "one#po {num} minutės|few#po {num} minučių|many#po {num} minutės|#po {num} minučių",
    "1#in 1 min|#in {num} min": "one#po {num} minutės|few#po {num} minučių|many#po {num} minutės|#po {num} minučių",
    "1#in 1 month|#in {num} months": "one#po {num} mėnesio|few#po {num} mėnesių|many#po {num} mėnesio|#po {num} mėnesių",
    "1#in 1 mon|#in {num} mons": "one#po {num} mėnesio|few#po {num} mėnesių|many#po {num} mėnesio|#po {num} mėnesių",
    "1#in 1 second|#in {num} seconds": "one#po {num} sekundės|few#po {num} sekundžių|many#po {num} sekundės|#po {num} sekundžių",
    "1#in 1 sec|#in {num} sec": "one#po {num} sekundės|few#po {num} sekundžių|many#po {num} sekundės|#po {num} sekundžių",
    "1#in 1 week|#in {num} weeks": "one#po {num} savaitės|few#po {num} savaičių|many#po {num} savaitės|#po {num} savaičių",
    "1#in 1 wk|#in {num} wks": "one#po {num} savaitės|few#po {num} savaičių|many#po {num} savaitės|#po {num} savaičių",
    "1#in 1 year|#in {num} years": "one#po {num} metų|few#po {num} metų|many#po {num} metų|#po {num} metų",
    "1#in 1 yr|#in {num} yrs": "one#po {num} metų|few#po {num} metų|many#po {num} metų|#po {num} metų",
    "B0": "vidurnaktis",
    "B1": "naktis",
    "B2": "priešpiet",
    "B3": "rytas",
    "B4": "perpiet",
    "B5": "popietė",
    "B6": "popiet",
    "B7": "vakaras",
    "E1": "P",
    "E2": "A",
    "E3": "T",
    "E4": "K",
    "E5": "P",
    "E6": "Š",
    "EE0": "Sk",
    "EE1": "Pr",
    "EE2": "An",
    "EE3": "Tr",
    "EE4": "Kt",
    "EE5": "Pn",
    "EE6": "Št",
    "EEE0": "sk",
    "EEE1": "pr",
    "EEE2": "an",
    "EEE3": "tr",
    "EEE4": "kt",
    "EEE5": "pn",
    "EEE6": "št",
    "EEEE0": "sekmadienis",
    "EEEE1": "pirmadienis",
    "EEEE2": "antradienis",
    "EEEE3": "trečiadienis",
    "EEEE4": "ketvirtadienis",
    "EEEE5": "penktadienis",
    "EEEE6": "šeštadienis",
    "G-1": "pr. m. e.",
    "G1": "mūsų eroje",
    "L1": "S",
    "L10": "S",
    "L11": "L",
    "L12": "G",
    "L2": "V",
    "L3": "K",
    "L4": "B",
    "L5": "G",
    "L6": "B",
    "L7": "L",
    "L8": "R",
    "L9": "R",
    "LL1": "sa",
    "LL10": "sp",
    "LL11": "la",
    "LL12": "gr",
    "LL2": "va",
    "LL3": "ko",
    "LL4": "ba",
    "LL5": "ge",
    "LL6": "bi",
    "LL7": "li",
    "LL8": "ru",
    "LL9": "ru",
    "LLL1": "saus.",
    "LLL10": "spal.",
    "LLL11": "lapkr.",
    "LLL12": "gruod.",
    "LLL2": "vas.",
    "LLL3": "kov.",
    "LLL4": "bal.",
    "LLL5": "geg.",
    "LLL6": "birž.",
    "LLL7": "liep.",
    "LLL8": "rugp.",
    "LLL9": "rugs.",
    "LLLL1": "sausis",
    "LLLL10": "spalis",
    "LLLL11": "lapkritis",
    "LLLL12": "gruodis",
    "LLLL2": "vasaris",
    "LLLL3": "kovas",
    "LLLL4": "balandis",
    "LLLL5": "gegužė",
    "LLLL6": "birželis",
    "LLLL7": "liepa",
    "LLLL8": "rugpjūtis",
    "LLLL9": "rugsėjis",
    "MMM1": "saus.",
    "MMM10": "spal.",
    "MMM11": "lapkr.",
    "MMM12": "gruod.",
    "MMM2": "vas.",
    "MMM3": "kov.",
    "MMM4": "bal.",
    "MMM5": "geg.",
    "MMM6": "birž.",
    "MMM7": "liep.",
    "MMM8": "rugp.",
    "MMM9": "rugs.",
    "MMMM1": "sausio",
    "MMMM10": "spalio",
    "MMMM11": "lapkričio",
    "MMMM12": "gruodžio",
    "MMMM2": "vasario",
    "MMMM3": "kovo",
    "MMMM4": "balandžio",
    "MMMM5": "gegužės",
    "MMMM6": "birželio",
    "MMMM7": "liepos",
    "MMMM8": "rugpjūčio",
    "MMMM9": "rugsėjo",
    "N1": "s",
    "N10": "s",
    "N11": "l",
    "N12": "g",
    "N2": "v",
    "N3": "k",
    "N4": "b",
    "N5": "g",
    "N6": "b",
    "N7": "l",
    "N8": "r",
    "N9": "r",
    "NN1": "sa",
    "NN10": "sp",
    "NN11": "la",
    "NN12": "gr",
    "NN2": "va",
    "NN3": "ko",
    "NN4": "ba",
    "NN5": "ge",
    "NN6": "bi",
    "NN7": "li",
    "NN8": "ru",
    "NN9": "ru",
    "a0": "priešpiet",
    "a1": "popiet",
    "durationLongDays": "one#{num} d.|few#{num} d.|many#{num} d.|#{num} d.",
    "durationMediumHours": "one#{num} h|few#{num} h|many#{num} h|#{num} h",
    "durationMediumMillis": "#{num} ms",
    "durationMediumWeeks": "one#{num} sav.|few#{num} sav.|many#{num} sav.|#{num} sav.",
    "durationMediumYears": "one#{num} m.|few#{num} m.|many#{num} m.|#{num} m.",
    "durationShortMillis": "#{num} ms",
    "durationShortMinutes": "one#{num} min.|few#{num} min.|many#{num} min.|#{num} min.",
    "durationShortMonths": "one#{num} mėn.|few#{num} mėn.|many#{num} mėn.|#{num} mėn.",
    "finalSeparatorFull": " ir ",
    "finalSeparatorLong": " ",
    "finalSeparatorMedium": " ",
    "finalSeparatorShort": " ",
    "separatorFull": " ",
    "separatorLong": " "
}
