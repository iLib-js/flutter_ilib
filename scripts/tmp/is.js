ilib.data.plurals_is = {
    "one": {
        "or": [
            {
                "and": [
                    {
                        "eq": [
                            "t",
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
                                    "t",
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
                                    "t",
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
ilib.data.localeinfo_is = {
    "delimiter": {
        "alternateQuotationEnd": "‘",
        "alternateQuotationStart": "‚",
        "quotationEnd": "“",
        "quotationStart": "„"
    },
    "language.name": "Icelandic",
    "locale": "is",
    "numfmt": {
        "currencyFormats": {
            "common": "{n} {s}",
            "commonNegative": "-{n} {s}"
        },
        "decimalChar": ",",
        "groupChar": "."
    },
    "scripts": [
        "Latn"
    ]
}
ilib.data.localeinfo_und_IS = {
    "clock": "24",
    "currency": "ISK",
    "firstDayOfWeek": 1,
    "locale": "IS",
    "region.name": "Iceland",
    "timezone": "Atlantic/Reykjavik"
}
ilib.data.dateformats_is = {
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
                "m": "d",
                "s": "d"
            },
            "dm": {
                "f": "d. MMMM",
                "l": "d. MMMM",
                "m": "d. MMM",
                "s": "d.M"
            },
            "dmw": {
                "f": "EEEE, d. MMMM",
                "l": "EEE, d. MMMM",
                "m": "EE, d. MMM",
                "s": "E, d.M"
            },
            "dmwy": {
                "f": "EEEE, d. MMMM yyyy",
                "l": "EEE, d. MMMM yyyy",
                "m": "EE, d. MMM yyyy",
                "s": "E, d.M.yyyy"
            },
            "dmy": {
                "f": "d. MMMM yyyy",
                "l": "d. MMMM yyyy",
                "m": "d. MMM yyyy",
                "s": "d.M.yyyy"
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
                "s": "M.yyyy"
            },
            "y": {
                "s": "yyyy"
            }
        },
        "order": {
            "f": "{date} 'kl'. {time}",
            "l": "{date} 'kl'. {time}",
            "m": "{date}, {time}",
            "s": "{date}, {time}"
        },
        "range": {
            "c00": {
                "f": "{sd}. {sm} {sy} kl. {st} – {et}",
                "l": "{sd}. {sm} {sy} kl. {st} – {et}",
                "m": "{sd}. {sm} {sy}, {st} – {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {et}"
            },
            "c01": {
                "f": "{sd}. {sm} {sy} kl. {st} – {ed}. {em} {ey} kl. {et}",
                "l": "{sd}. {sm} {sy} kl. {st} – {ed}. {em} {ey} kl. {et}",
                "m": "{sd}. {sm} {sy}, {st} – {ed}. {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c02": {
                "f": "{sd}. {sm} {sy} kl. {st} – {ed}. {em} {ey} kl. {et}",
                "l": "{sd}. {sm} {sy} kl. {st} – {ed}. {em} {ey} kl. {et}",
                "m": "{sd}. {sm} {sy}, {st} – {ed}. {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c03": {
                "f": "{sd}. {sm} {sy} kl. {st} – {ed}. {em} {ey} kl. {et}",
                "l": "{sd}. {sm} {sy} kl. {st} – {ed}. {em} {ey} kl. {et}",
                "m": "{sd}. {sm} {sy}, {st} – {ed}. {em} {ey}, {et}",
                "s": "{sd}.{sm}.{sy}, {st} – {ed}.{em}.{ey}, {et}"
            },
            "c10": {
                "f": "{sd} – {ed}. {em} {ey}",
                "l": "{sd} – {ed}. {em} {ey}",
                "m": "{sd} – {ed}. {em} {ey}",
                "s": "{sd} – {ed}.{em}.{ey}"
            },
            "c11": {
                "f": "{sd}. {sm} – {ed}. {em} {ey}",
                "l": "{sd}. {sm} – {ed}. {em} {ey}",
                "m": "{sd}. {sm} – {ed}. {em} {ey}",
                "s": "{sd}.{sm} – {ed}.{em}.{ey}"
            },
            "c12": {
                "f": "{sd}. {sm} {sy} – {ed}. {em} {ey}",
                "l": "{sd}. {sm} {sy} – {ed}. {em} {ey}",
                "m": "{sd}. {sm} {sy} – {ed}. {em} {ey}",
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
ilib.data.sysres_is = {
    "#in {num}d": "one#eftir {num} dag|#eftir {num} daga",
    "#in {num}h": "one#eftir {num} klst.|#eftir {num} klst.",
    "#in {num}mi": "one#eftir {num} mín.|#eftir {num} mín.",
    "#in {num}mo": "one#eftir {num} mán.|#eftir {num} mán.",
    "#in {num}s": "one#eftir {num} sek.|#eftir {num} sek.",
    "#in {num}w": "one#eftir {num} viku|#eftir {num} vikur",
    "#in {num}y": "one#eftir {num} ár|#eftir {num} ár",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num} d.|#{num} d.",
    "#{num}d ago": "one#fyrir {num} degi|#fyrir {num} dögum",
    "#{num}h": "one#{num} klst.|#{num} klst.",
    "#{num}h ago": "one#fyrir {num} klst.|#fyrir {num} klst.",
    "#{num}mi ago": "one#fyrir {num} mín.|#fyrir {num} mín.",
    "#{num}mo ago": "one#fyrir {num} mán.|#fyrir {num} mán.",
    "#{num}s": "one#{num} sek.|#{num} sek.",
    "#{num}s ago": "one#fyrir {num} sek.|#fyrir {num} sek.",
    "#{num}w": "one#{num} v.|#{num} v.",
    "#{num}w ago": "one#fyrir {num} viku|#fyrir {num} vikum",
    "#{num}y": "one#{num}á|#{num}á",
    "#{num}y ago": "one#fyrir {num} ári|#fyrir {num} árum",
    "1#1 day ago|#{num} days ago": "one#fyrir {num} degi|#fyrir {num} dögum",
    "1#1 day|#{num} days": "one#{num} dagur|#{num} dagar",
    "1#1 dy ago|#{num} dys ago": "one#fyrir {num} degi|#fyrir {num} dögum",
    "1#1 dy|#{num} dys": "one#{num} d.|#{num} d.",
    "1#1 hour ago|#{num} hours ago": "one#fyrir {num} klukkustund|#fyrir {num} klukkustundum",
    "1#1 hour|#{num} hours": "one#{num} klukkustund|#{num} klukkustundir",
    "1#1 hr ago|#{num} hrs ago": "one#fyrir {num} klukkustund|#fyrir {num} klukkustundum",
    "1#1 hr|#{num} hrs": "one#{num} klst.|#{num} klst.",
    "1#1 millisecond|#{num} milliseconds": "one#{num} millisekúnda|#{num} millisekúndur",
    "1#1 min ago|#{num} min ago": "one#fyrir {num} mínútu|#fyrir {num} mínútum",
    "1#1 minute ago|#{num} minutes ago": "one#fyrir {num} mínútu|#fyrir {num} mínútum",
    "1#1 minute|#{num} minutes": "one#{num} mínúta|#{num} mínútur",
    "1#1 min|#{num} min": "one#{num} mín.|#{num} mín.",
    "1#1 mi|#{num} min": "one#{num} mín.|#{num} mín.",
    "1#1 mon ago|#{num} mons ago": "one#fyrir {num} mánuði|#fyrir {num} mánuðum",
    "1#1 month ago|#{num} months ago": "one#fyrir {num} mánuði|#fyrir {num} mánuðum",
    "1#1 month|#{num} months": "one#{num} mánuður|#{num} mánuðir",
    "1#1 mon|#{num} mons": "one#{num} mán.|#{num} mán.",
    "1#1 mo|#{num} mos": "one#{num} mán.|#{num} mán.",
    "1#1 sec ago|#{num} sec ago": "one#fyrir {num} sekúndu|#fyrir {num} sekúndum",
    "1#1 second ago|#{num} seconds ago": "one#fyrir {num} sekúndu|#fyrir {num} sekúndum",
    "1#1 second|#{num} seconds": "one#{num} sekúnda|#{num} sekúndur",
    "1#1 sec|#{num} sec": "one#{num} sek.|#{num} sek.",
    "1#1 se|#{num} sec": "one#{num} sek.|#{num} sek.",
    "1#1 week ago|#{num} weeks ago": "one#fyrir {num} viku|#fyrir {num} vikum",
    "1#1 week|#{num} weeks": "one#{num} vika|#{num} vikur",
    "1#1 wk ago|#{num} wks ago": "one#fyrir {num} viku|#fyrir {num} vikum",
    "1#1 wk|#{num} wks": "one#{num} vika|#{num} vikur",
    "1#1 year ago|#{num} years ago": "one#fyrir {num} ári|#fyrir {num} árum",
    "1#1 year|#{num} years": "one#{num} ár|#{num} ár",
    "1#1 yr ago|#{num} yrs ago": "one#fyrir {num} ári|#fyrir {num} árum",
    "1#1 yr|#{num} yrs": "one#{num} ár|#{num} ár",
    "1#in 1 day|#in {num} days": "one#eftir {num} dag|#eftir {num} daga",
    "1#in 1 dy|#in {num} dys": "one#eftir {num} dag|#eftir {num} daga",
    "1#in 1 hour|#in {num} hours": "one#eftir {num} klukkustund|#eftir {num} klukkustundir",
    "1#in 1 hr|#in {num} hrs": "one#eftir {num} klukkustund|#eftir {num} klukkustundir",
    "1#in 1 minute|#in {num} minutes": "one#eftir {num} mínútu|#eftir {num} mínútur",
    "1#in 1 min|#in {num} min": "one#eftir {num} mínútu|#eftir {num} mínútur",
    "1#in 1 month|#in {num} months": "one#eftir {num} mánuð|#eftir {num} mánuði",
    "1#in 1 mon|#in {num} mons": "one#eftir {num} mánuð|#eftir {num} mánuði",
    "1#in 1 second|#in {num} seconds": "one#eftir {num} sekúndu|#eftir {num} sekúndur",
    "1#in 1 sec|#in {num} sec": "one#eftir {num} sekúndu|#eftir {num} sekúndur",
    "1#in 1 week|#in {num} weeks": "one#eftir {num} viku|#eftir {num} vikur",
    "1#in 1 wk|#in {num} wks": "one#eftir {num} viku|#eftir {num} vikur",
    "1#in 1 year|#in {num} years": "one#eftir {num} ár|#eftir {num} ár",
    "1#in 1 yr|#in {num} yrs": "one#eftir {num} ár|#eftir {num} ár",
    "B0": "miðnætti",
    "B1": "að nóttu",
    "B2": "f.h.",
    "B3": "að morgni",
    "B4": "hádegi",
    "B5": "síðdegis",
    "B6": "e.h.",
    "B7": "að kvöldi",
    "E2": "Þ",
    "E3": "M",
    "E4": "F",
    "E6": "L",
    "EE0": "su.",
    "EE1": "má.",
    "EE2": "þr.",
    "EE3": "mi.",
    "EE4": "fi.",
    "EE5": "fö.",
    "EE6": "la.",
    "EEE0": "sun.",
    "EEE1": "mán.",
    "EEE2": "þri.",
    "EEE3": "mið.",
    "EEE4": "fim.",
    "EEE5": "fös.",
    "EEE6": "lau.",
    "EEEE0": "sunnudagur",
    "EEEE1": "mánudagur",
    "EEEE2": "þriðjudagur",
    "EEEE3": "miðvikudagur",
    "EEEE4": "fimmtudagur",
    "EEEE5": "föstudagur",
    "EEEE6": "laugardagur",
    "G-1": "f.v.t.",
    "G1": "v.t.",
    "MMM1": "jan.",
    "MMM10": "okt.",
    "MMM11": "nóv.",
    "MMM12": "des.",
    "MMM2": "feb.",
    "MMM3": "mar.",
    "MMM4": "apr.",
    "MMM5": "maí",
    "MMM6": "jún.",
    "MMM7": "júl.",
    "MMM8": "ágú.",
    "MMM9": "sep.",
    "MMMM1": "janúar",
    "MMMM10": "október",
    "MMMM11": "nóvember",
    "MMMM12": "desember",
    "MMMM2": "febrúar",
    "MMMM3": "mars",
    "MMMM4": "apríl",
    "MMMM5": "maí",
    "MMMM6": "júní",
    "MMMM7": "júlí",
    "MMMM8": "ágúst",
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
    "N8": "á",
    "N9": "s",
    "NN1": "ja",
    "NN10": "ok",
    "NN11": "nó",
    "NN12": "de",
    "NN2": "fe",
    "NN3": "ma",
    "NN4": "ap",
    "NN5": "ma",
    "NN6": "jú",
    "NN7": "jú",
    "NN8": "ág",
    "NN9": "se",
    "a0": "f.h.",
    "a1": "e.h.",
    "durationLongDays": "one#{num} dagur|#{num} dagar",
    "durationMediumHours": "one#{num} klst.|#{num} klst.",
    "durationMediumMillis": "one#{num}ms|#{num}ms",
    "durationMediumWeeks": "one#{num} v.|#{num} v.",
    "durationMediumYears": "one#{num}á|#{num}á",
    "durationShortMillis": "one#{num}ms|#{num}ms",
    "durationShortMinutes": "one#{num} mín.|#{num} mín.",
    "durationShortMonths": "one#{num} mán.|#{num} mán.",
    "finalSeparatorFull": " og ",
    "finalSeparatorLong": " og ",
    "finalSeparatorMedium": " og ",
    "finalSeparatorShort": " og ",
    "separatorMedium": ", "
}
