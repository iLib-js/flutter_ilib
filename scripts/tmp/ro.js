ilib.data.plurals_ro = {
    "few": {
        "or": [
            {
                "neq": [
                    "v",
                    0
                ]
            },
            {
                "eq": [
                    "n",
                    0
                ]
            },
            {
                "and": [
                    {
                        "neq": [
                            "n",
                            1
                        ]
                    },
                    {
                        "eq": [
                            {
                                "mod": [
                                    "n",
                                    100
                                ]
                            },
                            [
                                1,
                                19
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
ilib.data.localeinfo_ro = {
    "delimiter": {
        "alternateQuotationEnd": "»",
        "alternateQuotationStart": "«",
        "quotationStart": "„"
    },
    "language.name": "Romanian",
    "locale": "ro",
    "numfmt": {
        "currencyFormats": {
            "common": "{n} {s}",
            "commonNegative": "-{n} {s}"
        },
        "decimalChar": ",",
        "groupChar": ".",
        "negativepctFmt": "-{n} %",
        "pctFmt": "{n} %"
    },
    "scripts": [
        "Latn",
        "Cyrl"
    ]
}
ilib.data.localeinfo_und_RO = {
    "clock": "24",
    "currency": "RON",
    "firstDayOfWeek": 1,
    "locale": "RO",
    "region.name": "Romania",
    "timezone": "Europe/Bucharest"
}
ilib.data.dateformats_ro = {
    "dayPeriods": [
        {
            "at": 0
        },
        {
            "from": 0,
            "to": 720
        },
        {
            "from": 300,
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
            "to": 300
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
                "l": "d MMMM",
                "m": "d MMM",
                "s": "dd.MM"
            },
            "dmw": {
                "f": "EEEE, d MMMM",
                "l": "EEE, d MMMM",
                "m": "EE, d MMM",
                "s": "E, dd.MM"
            },
            "dmwy": {
                "f": "EEEE, d MMMM yyyy",
                "l": "EEE, d MMMM yyyy",
                "m": "EE, d MMM yyyy",
                "s": "E, dd.MM.yyyy"
            },
            "dmy": {
                "l": "d MMMM yyyy",
                "m": "d MMM yyyy",
                "s": "dd.MM.yyyy"
            },
            "dw": {
                "f": "EEEE, d",
                "l": "EEE, d",
                "m": "EE, d",
                "s": "E, dd"
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
            "y": {
                "s": "yyyy"
            }
        },
        "order": {
            "f": "{date} 'la' {time}",
            "l": "{date} 'la' {time}",
            "m": "{date}, {time}",
            "s": "{date}, {time}"
        },
        "range": {
            "c00": {
                "f": "{sd} {sm} {sy} la {st} – {et}",
                "l": "{sd} {sm} {sy} la {st} – {et}",
                "m": "{sd} {sm} {sy}, {st} – {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {et}"
            },
            "c01": {
                "f": "{sd} {sm} {sy} la {st} – {ed} {em} {ey} la {et}",
                "l": "{sd} {sm} {sy} la {st} – {ed} {em} {ey} la {et}",
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c02": {
                "f": "{sd} {sm} {sy} la {st} – {ed} {em} {ey} la {et}",
                "l": "{sd} {sm} {sy} la {st} – {ed} {em} {ey} la {et}",
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c03": {
                "f": "{sd} {sm} {sy} la {st} – {ed} {em} {ey} la {et}",
                "l": "{sd} {sm} {sy} la {st} – {ed} {em} {ey} la {et}",
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
ilib.data.sysres_ro = {
    "#in {num}d": "one#peste {num} zi|few#peste {num} zile|#peste {num} de zile",
    "#in {num}h": "one#peste {num} h|few#peste {num} h|#peste {num} h",
    "#in {num}mi": "one#peste {num} min.|few#peste {num} min.|#peste {num} min.",
    "#in {num}mo": "one#peste {num} lună|few#peste {num} luni|#peste {num} luni",
    "#in {num}s": "one#peste {num} sec.|few#peste {num} sec.|#peste {num} sec.",
    "#in {num}w": "one#peste {num} săpt.|few#peste {num} săpt.|#peste {num} săpt.",
    "#in {num}y": "one#peste {num} an|few#peste {num} ani|#peste {num} de ani",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num} z|few#{num} z|#{num} z",
    "#{num}d ago": "one#acum {num} zi|few#acum {num} zile|#acum {num} de zile",
    "#{num}h": "one#{num} h|few#{num} h|#{num} h",
    "#{num}h ago": "one#acum {num} h|few#acum {num} h|#acum {num} h",
    "#{num}mi ago": "one#acum {num} min.|few#acum {num} min.|#acum {num} min.",
    "#{num}mo ago": "one#acum {num} lună|few#acum {num} luni|#acum {num} luni",
    "#{num}s": "#{num} s",
    "#{num}s ago": "one#acum {num} sec.|few#acum {num} sec.|#acum {num} sec.",
    "#{num}w": "one#{num} săpt.|few#{num} săpt.|#{num} săpt.",
    "#{num}w ago": "one#acum {num} săpt.|few#acum {num} săpt.|#acum {num} săpt.",
    "#{num}y": "one#{num} a|few#{num} a|#{num} a",
    "#{num}y ago": "one#acum {num} an|few#acum {num} ani|#acum {num} de ani",
    "1#1 day ago|#{num} days ago": "one#acum {num} zi|few#acum {num} zile|#acum {num} de zile",
    "1#1 day|#{num} days": "one#{num} zi|few#{num} zile|#{num} de zile",
    "1#1 dy ago|#{num} dys ago": "one#acum {num} zi|few#acum {num} zile|#acum {num} de zile",
    "1#1 dy|#{num} dys": "one#{num} z|few#{num} z|#{num} z",
    "1#1 hour ago|#{num} hours ago": "one#acum {num} oră|few#acum {num} ore|#acum {num} de ore",
    "1#1 hour|#{num} hours": "one#{num} oră|few#{num} ore|#{num} de ore",
    "1#1 hr ago|#{num} hrs ago": "one#acum {num} oră|few#acum {num} ore|#acum {num} de ore",
    "1#1 hr|#{num} hrs": "one#{num} oră|few#{num} ore|#{num} ore",
    "1#1 millisecond|#{num} milliseconds": "one#{num} milisecundă|few#{num} milisecunde|#{num} de milisecunde",
    "1#1 min ago|#{num} min ago": "one#acum {num} minut|few#acum {num} minute|#acum {num} de minute",
    "1#1 minute ago|#{num} minutes ago": "one#acum {num} minut|few#acum {num} minute|#acum {num} de minute",
    "1#1 minute|#{num} minutes": "one#{num} minut|few#{num} minute|#{num} de minute",
    "1#1 min|#{num} min": "one#{num} min.|few#{num} min.|#{num} min.",
    "1#1 mi|#{num} min": "one#{num} m|few#{num} m|#{num} m",
    "1#1 mon ago|#{num} mons ago": "one#acum {num} lună|few#acum {num} luni|#acum {num} de luni",
    "1#1 month ago|#{num} months ago": "one#acum {num} lună|few#acum {num} luni|#acum {num} de luni",
    "1#1 month|#{num} months": "one#{num} lună|few#{num} luni|#{num} de luni",
    "1#1 mon|#{num} mons": "one#{num} lună|few#{num} luni|#{num} luni",
    "1#1 mo|#{num} mos": "one#{num} l|few#{num} l|#{num} l",
    "1#1 sec ago|#{num} sec ago": "one#acum {num} secundă|few#acum {num} secunde|#acum {num} de secunde",
    "1#1 second ago|#{num} seconds ago": "one#acum {num} secundă|few#acum {num} secunde|#acum {num} de secunde",
    "1#1 second|#{num} seconds": "one#{num} secundă|few#{num} secunde|#{num} de secunde",
    "1#1 sec|#{num} sec": "#{num} s",
    "1#1 se|#{num} sec": "#{num} s",
    "1#1 week ago|#{num} weeks ago": "one#acum {num} săptămână|few#acum {num} săptămâni|#acum {num} de săptămâni",
    "1#1 week|#{num} weeks": "one#{num} săptămână|few#{num} săptămâni|#{num} de săptămâni",
    "1#1 wk ago|#{num} wks ago": "one#acum {num} săptămână|few#acum {num} săptămâni|#acum {num} de săptămâni",
    "1#1 wk|#{num} wks": "one#{num} săpt.|few#{num} săpt.|#{num} săpt.",
    "1#1 year ago|#{num} years ago": "one#acum {num} an|few#acum {num} ani|#acum {num} de ani",
    "1#1 year|#{num} years": "one#{num} an|few#{num} ani|#{num} de ani",
    "1#1 yr ago|#{num} yrs ago": "one#acum {num} an|few#acum {num} ani|#acum {num} de ani",
    "1#1 yr|#{num} yrs": "one#{num} an|few#{num} ani|#{num} ani",
    "1#in 1 day|#in {num} days": "one#peste {num} zi|few#peste {num} zile|#peste {num} de zile",
    "1#in 1 dy|#in {num} dys": "one#peste {num} zi|few#peste {num} zile|#peste {num} de zile",
    "1#in 1 hour|#in {num} hours": "one#peste {num} oră|few#peste {num} ore|#peste {num} de ore",
    "1#in 1 hr|#in {num} hrs": "one#peste {num} oră|few#peste {num} ore|#peste {num} de ore",
    "1#in 1 minute|#in {num} minutes": "one#peste {num} minut|few#peste {num} minute|#peste {num} de minute",
    "1#in 1 min|#in {num} min": "one#peste {num} minut|few#peste {num} minute|#peste {num} de minute",
    "1#in 1 month|#in {num} months": "one#peste {num} lună|few#peste {num} luni|#peste {num} de luni",
    "1#in 1 mon|#in {num} mons": "one#peste {num} lună|few#peste {num} luni|#peste {num} de luni",
    "1#in 1 second|#in {num} seconds": "one#peste {num} secundă|few#peste {num} secunde|#peste {num} de secunde",
    "1#in 1 sec|#in {num} sec": "one#peste {num} secundă|few#peste {num} secunde|#peste {num} de secunde",
    "1#in 1 week|#in {num} weeks": "one#peste {num} săptămână|few#peste {num} săptămâni|#peste {num} de săptămâni",
    "1#in 1 wk|#in {num} wks": "one#peste {num} săptămână|few#peste {num} săptămâni|#peste {num} de săptămâni",
    "1#in 1 year|#in {num} years": "one#peste {num} an|few#peste {num} ani|#peste {num} de ani",
    "1#in 1 yr|#in {num} yrs": "one#peste {num} an|few#peste {num} ani|#peste {num} de ani",
    "B0": "la miezul nopții",
    "B1": "a.m.",
    "B2": "dimineața",
    "B3": "la amiază",
    "B4": "după-amiaza",
    "B5": "p.m.",
    "B6": "seara",
    "B7": "noaptea",
    "E0": "D",
    "E1": "L",
    "E2": "M",
    "E3": "M",
    "E4": "J",
    "E5": "V",
    "EE0": "du.",
    "EE1": "lu.",
    "EE2": "ma.",
    "EE3": "mi.",
    "EE4": "joi",
    "EE5": "vi.",
    "EE6": "sâ.",
    "EEE0": "dum.",
    "EEE1": "lun.",
    "EEE2": "mar.",
    "EEE3": "mie.",
    "EEE4": "joi",
    "EEE5": "vin.",
    "EEE6": "sâm.",
    "EEEE0": "duminică",
    "EEEE1": "luni",
    "EEEE2": "marți",
    "EEEE3": "miercuri",
    "EEEE4": "joi",
    "EEEE5": "vineri",
    "EEEE6": "sâmbătă",
    "G-1": "î.e.n",
    "G1": "e.n.",
    "MMM1": "ian.",
    "MMM10": "oct.",
    "MMM11": "nov.",
    "MMM12": "dec.",
    "MMM2": "feb.",
    "MMM3": "mar.",
    "MMM4": "apr.",
    "MMM5": "mai",
    "MMM6": "iun.",
    "MMM7": "iul.",
    "MMM8": "aug.",
    "MMM9": "sept.",
    "MMMM1": "ianuarie",
    "MMMM10": "octombrie",
    "MMMM11": "noiembrie",
    "MMMM12": "decembrie",
    "MMMM2": "februarie",
    "MMMM3": "martie",
    "MMMM4": "aprilie",
    "MMMM5": "mai",
    "MMMM6": "iunie",
    "MMMM7": "iulie",
    "MMMM8": "august",
    "MMMM9": "septembrie",
    "N1": "i",
    "N10": "o",
    "N11": "n",
    "N12": "d",
    "N2": "f",
    "N3": "m",
    "N4": "a",
    "N5": "m",
    "N6": "i",
    "N7": "i",
    "N8": "a",
    "N9": "s",
    "NN1": "ia",
    "NN10": "oc",
    "NN11": "no",
    "NN12": "de",
    "NN2": "fe",
    "NN3": "ma",
    "NN4": "ap",
    "NN5": "ma",
    "NN6": "iu",
    "NN7": "iu",
    "NN8": "au",
    "NN9": "se",
    "a0": "a.m.",
    "a1": "p.m.",
    "durationLongDays": "one#{num} zi|few#{num} zile|#{num} zile",
    "durationMediumHours": "one#{num} h|few#{num} h|#{num} h",
    "durationMediumMillis": "#{num} ms",
    "durationMediumWeeks": "one#{num} săpt.|few#{num} săpt.|#{num} săpt.",
    "durationMediumYears": "one#{num} a|few#{num} a|#{num} a",
    "durationShortMillis": "#{num} ms",
    "durationShortMinutes": "one#{num} m|few#{num} m|#{num} m",
    "durationShortMonths": "one#{num} l|few#{num} l|#{num} l",
    "finalSeparatorFull": ", ",
    "finalSeparatorLong": ", ",
    "finalSeparatorMedium": ", ",
    "finalSeparatorShort": ", ",
    "separatorMedium": ", ",
    "separatorShort": ", "
}
