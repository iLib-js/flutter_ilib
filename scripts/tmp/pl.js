ilib.data.plurals_pl = {
    "few": {
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
    "many": {
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
                        "neq": [
                            "i",
                            1
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
                                0,
                                1
                            ]
                        ]
                    }
                ]
            },
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
                                5,
                                9
                            ]
                        ]
                    }
                ]
            },
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
        "and": [
            {
                "eq": [
                    "i",
                    1
                ]
            },
            {
                "eq": [
                    "v",
                    0
                ]
            }
        ]
    }
}
ilib.data.localeinfo_pl = {
    "delimiter": {
        "alternateQuotationEnd": "»",
        "alternateQuotationStart": "«",
        "quotationStart": "„"
    },
    "language.name": "Polish",
    "locale": "pl",
    "numfmt": {
        "currencyFormats": {
            "common": "{n} {s}",
            "commonNegative": "-{n} {s}"
        },
        "decimalChar": ",",
        "groupChar": " "
    },
    "scripts": [
        "Latn"
    ]
}
ilib.data.localeinfo_und_PL = {
    "clock": "24",
    "currency": "PLN",
    "firstDayOfWeek": 1,
    "locale": "PL",
    "region.name": "Poland",
    "timezone": "Europe/Warsaw"
}
ilib.data.dateformats_pl = {
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
            "to": 1260
        },
        {
            "from": 1260,
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
                "l": "d MMMM",
                "m": "d MMM",
                "s": "d.MM"
            },
            "dmw": {
                "f": "EEEE, d MMMM",
                "l": "EEE, d MMMM",
                "m": "EE, d MMM",
                "s": "E, d.MM"
            },
            "dmwy": {
                "f": "EEEE, d MMMM yyyy",
                "l": "EEE, d MMMM yyyy",
                "m": "EE, d MMM yyyy",
                "s": "E, d.MM.yyyy"
            },
            "dmy": {
                "l": "d MMMM yyyy",
                "m": "d MMM yyyy",
                "s": "d.MM.yyyy"
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
                "l": "MMMM yyyy",
                "m": "MMM yyyy",
                "s": "MM.yyyy"
            },
            "mys": {
                "f": "LLLL yyyy",
                "l": "LLLL yyyy",
                "m": "LLL yyyy",
                "s": "MM.yyyy"
            },
            "y": {
                "s": "yyyy"
            }
        },
        "order": {
            "f": "{date} {time}",
            "l": "{date} {time}",
            "m": "{date}, {time}",
            "s": "{date}, {time}"
        },
        "range": {
            "c00": {
                "m": "{sd} {sm} {sy}, {st} – {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {et}"
            },
            "c01": {
                "f": "{sd} {sm} {sy} {st} – {ed} {em} {ey} {et}",
                "l": "{sd} {sm} {sy} {st} – {ed} {em} {ey} {et}",
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c02": {
                "f": "{sd} {sm} {sy} {st} – {ed} {em} {ey} {et}",
                "l": "{sd} {sm} {sy} {st} – {ed} {em} {ey} {et}",
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c03": {
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c10": {
                "f": "{sd} – {ed} {em} {ey}",
                "l": "{sd} – {ed} {em} {ey}",
                "m": "{sd} – {ed} {em} {ey}",
                "s": "{sd} – {ed}.{em}.{ey}"
            },
            "c11": {
                "f": "{sd} {sm} – {ed} {em} {ey}",
                "l": "{sd} {sm} – {ed} {em} {ey}",
                "m": "{sd} {sm} – {ed} {em} {ey}",
                "s": "{sd}.{sm} – {ed}.{em}.{ey}"
            },
            "c12": {
                "m": "{sd} {sm} {sy} – {ed} {em} {ey}",
                "s": "{sd}.{sm}.{sy} – {ed}.{em}.{ey}"
            },
            "c20": {
                "m": "{sm} {sy} – {em} {ey}",
                "s": "{sm}.{sy} – {em}.{ey}"
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
ilib.data.sysres_pl = {
    "#in {num}d": "one#za {num} dzień|few#za {num} dni|many#za {num} dni|#za {num} dnia",
    "#in {num}h": "one#za {num} godz.|few#za {num} godz.|many#za {num} godz.|#za {num} godz.",
    "#in {num}mi": "one#za {num} min|few#za {num} min|many#za {num} min|#za {num} min",
    "#in {num}mo": "one#za {num} mies.|few#za {num} mies.|many#za {num} mies.|#za {num} mies.",
    "#in {num}s": "one#za {num} sek.|few#za {num} sek.|many#za {num} sek.|#za {num} sek.",
    "#in {num}w": "one#za {num} tydz.|few#za {num} tyg.|many#za {num} tyg.|#za {num} tyg.",
    "#in {num}y": "one#za {num} rok|few#za {num} lata|many#za {num} lat|#za {num} roku",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num} d.|few#{num} d.|many#{num} d.|#{num} d.",
    "#{num}d ago": "one#{num} dzień temu|few#{num} dni temu|many#{num} dni temu|#{num} dnia temu",
    "#{num}h": "one#{num} h|few#{num} h|many#{num} h|#{num} h",
    "#{num}h ago": "one#{num} godz. temu|few#{num} godz. temu|many#{num} godz. temu|#{num} godz. temu",
    "#{num}mi ago": "one#{num} min temu|few#{num} min temu|many#{num} min temu|#{num} min temu",
    "#{num}mo ago": "one#{num} mies. temu|few#{num} mies. temu|many#{num} mies. temu|#{num} mies. temu",
    "#{num}s": "one#{num} s|few#{num} s|many#{num} s|#{num} s",
    "#{num}s ago": "one#{num} sek. temu|few#{num} sek. temu|many#{num} sek. temu|#{num} sek. temu",
    "#{num}w": "one#{num} t.|few#{num} t.|many#{num} t.|#{num} t.",
    "#{num}w ago": "one#{num} tydz. temu|few#{num} tyg. temu|many#{num} tyg. temu|#{num} tyg. temu",
    "#{num}y": "one#{num} r.|few#{num} l.|many#{num} l.|#{num} r.",
    "#{num}y ago": "one#{num} rok temu|few#{num} lata temu|many#{num} lat temu|#{num} roku temu",
    "1#1 day ago|#{num} days ago": "one#{num} dzień temu|few#{num} dni temu|many#{num} dni temu|#{num} dnia temu",
    "1#1 day|#{num} days": "one#{num} doba|few#{num} doby|many#{num} dób|#{num} doby",
    "1#1 dy ago|#{num} dys ago": "one#{num} dzień temu|few#{num} dni temu|many#{num} dni temu|#{num} dnia temu",
    "1#1 dy|#{num} dys": "one#{num} d.|few#{num} d.|many#{num} d.|#{num} d.",
    "1#1 hour ago|#{num} hours ago": "one#{num} godzinę temu|few#{num} godziny temu|many#{num} godzin temu|#{num} godziny temu",
    "1#1 hour|#{num} hours": "one#{num} godzina|few#{num} godziny|many#{num} godzin|#{num} godziny",
    "1#1 hr ago|#{num} hrs ago": "one#{num} godzinę temu|few#{num} godziny temu|many#{num} godzin temu|#{num} godziny temu",
    "1#1 hr|#{num} hrs": "one#{num} godz.|few#{num} godz.|many#{num} godz.|#{num} godz.",
    "1#1 millisecond|#{num} milliseconds": "one#{num} milisekunda|few#{num} milisekundy|many#{num} milisekund|#{num} milisekundy",
    "1#1 min ago|#{num} min ago": "one#{num} minutę temu|few#{num} minuty temu|many#{num} minut temu|#{num} minuty temu",
    "1#1 minute ago|#{num} minutes ago": "one#{num} minutę temu|few#{num} minuty temu|many#{num} minut temu|#{num} minuty temu",
    "1#1 minute|#{num} minutes": "one#{num} minuta|few#{num} minuty|many#{num} minut|#{num} minuty",
    "1#1 min|#{num} min": "#{num} min",
    "1#1 mi|#{num} min": "#{num} min",
    "1#1 mon ago|#{num} mons ago": "one#{num} miesiąc temu|few#{num} miesiące temu|many#{num} miesięcy temu|#{num} miesiąca temu",
    "1#1 month ago|#{num} months ago": "one#{num} miesiąc temu|few#{num} miesiące temu|many#{num} miesięcy temu|#{num} miesiąca temu",
    "1#1 month|#{num} months": "one#{num} miesiąc|few#{num} miesiące|many#{num} miesięcy|#{num} miesiąca",
    "1#1 mon|#{num} mons": "one#{num} mies.|few#{num} mies.|many#{num} mies.|#{num} mies.",
    "1#1 mo|#{num} mos": "one#{num} m-c|few#{num} m-ce|many#{num} m-cy|#{num} m-ca",
    "1#1 sec ago|#{num} sec ago": "one#{num} sekundę temu|few#{num} sekundy temu|many#{num} sekund temu|#{num} sekundy temu",
    "1#1 second ago|#{num} seconds ago": "one#{num} sekundę temu|few#{num} sekundy temu|many#{num} sekund temu|#{num} sekundy temu",
    "1#1 second|#{num} seconds": "one#{num} sekunda|few#{num} sekundy|many#{num} sekund|#{num} sekundy",
    "1#1 sec|#{num} sec": "one#{num} sek.|few#{num} sek.|many#{num} sek.|#{num} sek.",
    "1#1 se|#{num} sec": "one#{num} s|few#{num} s|many#{num} s|#{num} s",
    "1#1 week ago|#{num} weeks ago": "one#{num} tydzień temu|few#{num} tygodnie temu|many#{num} tygodni temu|#{num} tygodnia temu",
    "1#1 week|#{num} weeks": "one#{num} tydzień|few#{num} tygodnie|many#{num} tygodni|#{num} tygodnia",
    "1#1 wk ago|#{num} wks ago": "one#{num} tydzień temu|few#{num} tygodnie temu|many#{num} tygodni temu|#{num} tygodnia temu",
    "1#1 wk|#{num} wks": "one#{num} tydz.|few#{num} tyg.|many#{num} tyg.|#{num} tyg.",
    "1#1 year ago|#{num} years ago": "one#{num} rok temu|few#{num} lata temu|many#{num} lat temu|#{num} roku temu",
    "1#1 year|#{num} years": "one#{num} rok|few#{num} lata|many#{num} lat|#{num} roku",
    "1#1 yr ago|#{num} yrs ago": "one#{num} rok temu|few#{num} lata temu|many#{num} lat temu|#{num} roku temu",
    "1#1 yr|#{num} yrs": "one#{num} rok|few#{num} lata|many#{num} lat|#{num} roku",
    "1#in 1 day|#in {num} days": "one#za {num} dzień|few#za {num} dni|many#za {num} dni|#za {num} dnia",
    "1#in 1 dy|#in {num} dys": "one#za {num} dzień|few#za {num} dni|many#za {num} dni|#za {num} dnia",
    "1#in 1 hour|#in {num} hours": "one#za {num} godzinę|few#za {num} godziny|many#za {num} godzin|#za {num} godziny",
    "1#in 1 hr|#in {num} hrs": "one#za {num} godzinę|few#za {num} godziny|many#za {num} godzin|#za {num} godziny",
    "1#in 1 minute|#in {num} minutes": "one#za {num} minutę|few#za {num} minuty|many#za {num} minut|#za {num} minuty",
    "1#in 1 min|#in {num} min": "one#za {num} minutę|few#za {num} minuty|many#za {num} minut|#za {num} minuty",
    "1#in 1 month|#in {num} months": "one#za {num} miesiąc|few#za {num} miesiące|many#za {num} miesięcy|#za {num} miesiąca",
    "1#in 1 mon|#in {num} mons": "one#za {num} miesiąc|few#za {num} miesiące|many#za {num} miesięcy|#za {num} miesiąca",
    "1#in 1 second|#in {num} seconds": "one#za {num} sekundę|few#za {num} sekundy|many#za {num} sekund|#za {num} sekundy",
    "1#in 1 sec|#in {num} sec": "one#za {num} sekundę|few#za {num} sekundy|many#za {num} sekund|#za {num} sekundy",
    "1#in 1 week|#in {num} weeks": "one#za {num} tydzień|few#za {num} tygodnie|many#za {num} tygodni|#za {num} tygodnia",
    "1#in 1 wk|#in {num} wks": "one#za {num} tydzień|few#za {num} tygodnie|many#za {num} tygodni|#za {num} tygodnia",
    "1#in 1 year|#in {num} years": "one#za {num} rok|few#za {num} lata|many#za {num} lat|#za {num} roku",
    "1#in 1 yr|#in {num} yrs": "one#za {num} rok|few#za {num} lata|many#za {num} lat|#za {num} roku",
    "B0": "o północy",
    "B1": "AM",
    "B2": "rano",
    "B3": "przed południem",
    "B4": "w południe",
    "B5": "po południu",
    "B6": "PM",
    "B7": "wieczorem",
    "B8": "w nocy",
    "E0": "n",
    "E1": "p",
    "E2": "w",
    "E3": "ś",
    "E4": "c",
    "E5": "p",
    "E6": "s",
    "EE0": "nie",
    "EE1": "pon",
    "EE2": "wto",
    "EE3": "śro",
    "EE4": "czw",
    "EE5": "pią",
    "EE6": "sob",
    "EEE0": "niedz.",
    "EEE1": "pon.",
    "EEE2": "wt.",
    "EEE3": "śr.",
    "EEE4": "czw.",
    "EEE5": "pt.",
    "EEE6": "sob.",
    "EEEE0": "niedziela",
    "EEEE1": "poniedziałek",
    "EEEE2": "wtorek",
    "EEEE3": "środa",
    "EEEE4": "czwartek",
    "EEEE5": "piątek",
    "EEEE6": "sobota",
    "L1": "S",
    "L10": "P",
    "L11": "L",
    "L12": "G",
    "L2": "L",
    "L3": "M",
    "L4": "K",
    "L5": "M",
    "L6": "C",
    "L7": "L",
    "L8": "S",
    "L9": "W",
    "LL1": "st",
    "LL10": "pa",
    "LL11": "li",
    "LL12": "gr",
    "LL2": "lu",
    "LL3": "ma",
    "LL4": "kw",
    "LL5": "ma",
    "LL6": "cz",
    "LL7": "li",
    "LL8": "si",
    "LL9": "wr",
    "LLL1": "sty",
    "LLL10": "paź",
    "LLL11": "lis",
    "LLL12": "gru",
    "LLL2": "lut",
    "LLL3": "mar",
    "LLL4": "kwi",
    "LLL5": "maj",
    "LLL6": "cze",
    "LLL7": "lip",
    "LLL8": "sie",
    "LLL9": "wrz",
    "LLLL1": "styczeń",
    "LLLL10": "październik",
    "LLLL11": "listopad",
    "LLLL12": "grudzień",
    "LLLL2": "luty",
    "LLLL3": "marzec",
    "LLLL4": "kwiecień",
    "LLLL5": "maj",
    "LLLL6": "czerwiec",
    "LLLL7": "lipiec",
    "LLLL8": "sierpień",
    "LLLL9": "wrzesień",
    "MMM1": "sty",
    "MMM10": "paź",
    "MMM11": "lis",
    "MMM12": "gru",
    "MMM2": "lut",
    "MMM3": "mar",
    "MMM4": "kwi",
    "MMM5": "maj",
    "MMM6": "cze",
    "MMM7": "lip",
    "MMM8": "sie",
    "MMM9": "wrz",
    "MMMM1": "stycznia",
    "MMMM10": "października",
    "MMMM11": "listopada",
    "MMMM12": "grudnia",
    "MMMM2": "lutego",
    "MMMM3": "marca",
    "MMMM4": "kwietnia",
    "MMMM5": "maja",
    "MMMM6": "czerwca",
    "MMMM7": "lipca",
    "MMMM8": "sierpnia",
    "MMMM9": "września",
    "N1": "s",
    "N10": "p",
    "N11": "l",
    "N12": "g",
    "N2": "l",
    "N3": "m",
    "N4": "k",
    "N5": "m",
    "N6": "c",
    "N7": "l",
    "N8": "s",
    "N9": "w",
    "NN1": "st",
    "NN10": "pa",
    "NN11": "li",
    "NN12": "gr",
    "NN2": "lu",
    "NN3": "ma",
    "NN4": "kw",
    "NN5": "ma",
    "NN6": "cz",
    "NN7": "li",
    "NN8": "si",
    "NN9": "wr",
    "c0": "N",
    "c1": "P",
    "c2": "W",
    "c3": "Ś",
    "c4": "C",
    "c5": "P",
    "c6": "S",
    "cc0": "nie",
    "cc1": "pon",
    "cc2": "wto",
    "cc3": "śro",
    "cc4": "czw",
    "cc5": "pią",
    "cc6": "sob",
    "ccc0": "niedz.",
    "ccc1": "pon.",
    "ccc2": "wt.",
    "ccc3": "śr.",
    "ccc4": "czw.",
    "ccc5": "pt.",
    "ccc6": "sob.",
    "cccc0": "niedziela",
    "cccc1": "poniedziałek",
    "cccc2": "wtorek",
    "cccc3": "środa",
    "cccc4": "czwartek",
    "cccc5": "piątek",
    "cccc6": "sobota",
    "durationLongDays": "one#{num} doba|few#{num} doby|many#{num} dób|#{num} doby",
    "durationMediumHours": "one#{num} h|few#{num} h|many#{num} h|#{num} h",
    "durationMediumMillis": "#{num} ms",
    "durationMediumWeeks": "one#{num} t.|few#{num} t.|many#{num} t.|#{num} t.",
    "durationMediumYears": "one#{num} r.|few#{num} l.|many#{num} l.|#{num} r.",
    "durationShortMillis": "#{num} ms",
    "durationShortMinutes": "#{num} min",
    "durationShortMonths": "one#{num} m-c|few#{num} m-ce|many#{num} m-cy|#{num} m-ca",
    "finalSeparatorFull": " i ",
    "finalSeparatorLong": " i ",
    "finalSeparatorMedium": " i ",
    "finalSeparatorShort": " i ",
    "separatorMedium": ", ",
    "separatorShort": ", "
}
