ilib.data.plurals_sr = {
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
ilib.data.localeinfo_sr = {
    "delimiter": {
        "alternateQuotationEnd": "‘",
        "quotationEnd": "“",
        "quotationStart": "„"
    },
    "language.name": "Serbian",
    "locale": "sr",
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
ilib.data.localeinfo_und_ME = {
    "clock": "24",
    "currency": "EUR",
    "firstDayOfWeek": 1,
    "locale": "ME",
    "region.name": "Montenegro",
    "timezone": "Europe/Podgorica"
}
ilib.data.dateformats_sr = {
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
                "f": "d. MMMM",
                "l": "d. MMMM",
                "m": "d. M",
                "s": "d.M"
            },
            "dmw": {
                "f": "EEEE, d. MMMM",
                "l": "EEE, d. MMMM",
                "m": "EE, d. M",
                "s": "E, d.M"
            },
            "dmwy": {
                "f": "EEEE, d. MMMM yyyy.",
                "l": "EEE, d. MMMM yyyy.",
                "m": "EE, d. M. yyyy.",
                "s": "E, d.M.yy."
            },
            "dmy": {
                "f": "d. MMMM yyyy.",
                "l": "d. MMMM yyyy.",
                "m": "d. M. yyyy.",
                "s": "d.M.yy."
            },
            "dw": {
                "f": "EEEE, d",
                "l": "EEE, d",
                "m": "EE, d",
                "s": "E, d"
            },
            "m": {
                "l": "MMMM",
                "m": "M"
            },
            "my": {
                "f": "MMMM yyyy.",
                "l": "MMMM yyyy.",
                "m": "M. yyyy.",
                "s": "M.yy."
            }
        },
        "range": {
            "c00": {
                "f": "{sd}. {sm} {sy}. {st} – {et}",
                "l": "{sd}. {sm} {sy}. {st} – {et}",
                "m": "{sd}. {sm}. {sy}. {st} – {et}",
                "s": "{sd}.{sm}.{sy}. {st} – {et}"
            },
            "c01": {
                "f": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "l": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "m": "{sd}. {sm}. {sy}. {st} – {ed}. {em}. {ey}. {et}",
                "s": "{sd}.{sm}.{sy}. {st} – {ed}.{em}.{ey}. {et}"
            },
            "c02": {
                "f": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "l": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "m": "{sd}. {sm}. {sy}. {st} – {ed}. {em}. {ey}. {et}",
                "s": "{sd}.{sm}.{sy}. {st} – {ed}.{em}.{ey}. {et}"
            },
            "c03": {
                "f": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "l": "{sd}. {sm} {sy}. {st} – {ed}. {em} {ey}. {et}",
                "m": "{sd}. {sm}. {sy}. {st} – {ed}. {em}. {ey}. {et}",
                "s": "{sd}.{sm}.{sy}. {st} – {ed}.{em}.{ey}. {et}"
            },
            "c10": {
                "f": "{sd} – {ed}. {em} {ey}.",
                "l": "{sd} – {ed}. {em} {ey}.",
                "m": "{sd} – {ed}. {em}. {ey}.",
                "s": "{sd} – {ed}.{em}.{ey}."
            },
            "c11": {
                "f": "{sd}. {sm} – {ed}. {em} {ey}.",
                "l": "{sd}. {sm} – {ed}. {em} {ey}.",
                "m": "{sd}. {sm} – {ed}. {em}. {ey}.",
                "s": "{sd}.{sm} – {ed}.{em}.{ey}."
            },
            "c12": {
                "f": "{sd}. {sm} {sy}. – {ed}. {em} {ey}.",
                "l": "{sd}. {sm} {sy}. – {ed}. {em} {ey}.",
                "m": "{sd}. {sm}. {sy}. – {ed}. {em}. {ey}.",
                "s": "{sd}.{sm}.{sy}. – {ed}.{em}.{ey}."
            },
            "c20": {
                "f": "{sm} {sy}. – {em} {ey}.",
                "l": "{sm} {sy}. – {em} {ey}.",
                "m": "{sm}. {sy}. – {em}. {ey}.",
                "s": "{sm}.{sy}. – {em}.{ey}."
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
ilib.data.dateformats_sr_Latn = {
    "gregorian": {
        "date": {
            "l": {
                "f": "LLLL",
                "l": "LLLL",
                "m": "L",
                "s": "L"
            }
        }
    }
}
ilib.data.sysres_sr = {
    "#in {num}d": "one#за {num} д.|few#за {num} д.|#за {num} д.",
    "#in {num}h": "one#за {num} ч.|few#за {num} ч.|#за {num} ч.",
    "#in {num}mi": "one#за {num} мин.|few#за {num} мин.|#за {num} мин.",
    "#in {num}mo": "one#за {num} мес.|few#за {num} мес.|#за {num} мес.",
    "#in {num}s": "one#за {num} сек.|few#за {num} сек.|#за {num} сек.",
    "#in {num}w": "one#за {num} нед.|few#за {num} нед.|#за {num} нед.",
    "#in {num}y": "one#за {num} год.|few#за {num} год.|#за {num} год.",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num} д|few#{num} д|#{num} д",
    "#{num}d ago": "one#пре {num} д.|few#пре {num} д.|#пре {num} д.",
    "#{num}h": "one#{num} ч|few#{num} ч|#{num} ч",
    "#{num}h ago": "one#пре {num} ч.|few#пре {num} ч.|#пре {num} ч.",
    "#{num}mi ago": "one#пре {num} мин.|few#пре {num} мин.|#пре {num} мин.",
    "#{num}mo ago": "one#пре {num} мес.|few#пре {num} мес.|#пре {num} мес.",
    "#{num}s": "one#{num} с|few#{num} с|#{num} с",
    "#{num}s ago": "one#пре {num} сек.|few#пре {num} сек.|#пре {num} сек.",
    "#{num}w": "one#{num} н|few#{num} н|#{num} н",
    "#{num}w ago": "one#пре {num} нед.|few#пре {num} нед.|#пре {num} нед.",
    "#{num}y": "one#{num} г|few#{num} г|#{num} г",
    "#{num}y ago": "one#пре {num} год.|few#пре {num} год.|#пре {num} год.",
    "1#1 day ago|#{num} days ago": "one#пре {num} дана|few#пре {num} дана|#пре {num} дана",
    "1#1 day|#{num} days": "one#{num} дан|few#{num} дана|#{num} дана",
    "1#1 dy ago|#{num} dys ago": "one#пре {num} дана|few#пре {num} дана|#пре {num} дана",
    "1#1 dy|#{num} dys": "one#{num} д|few#{num} д|#{num} д",
    "1#1 hour ago|#{num} hours ago": "one#пре {num} сата|few#пре {num} сата|#пре {num} сати",
    "1#1 hour|#{num} hours": "one#{num} сат|few#{num} сата|#{num} сати",
    "1#1 hr ago|#{num} hrs ago": "one#пре {num} сата|few#пре {num} сата|#пре {num} сати",
    "1#1 hr|#{num} hrs": "one#{num} сат|few#{num} сата|#{num} сати",
    "1#1 millisecond|#{num} milliseconds": "one#{num} милисекунда|few#{num} милисекунде|#{num} милисекунди",
    "1#1 min ago|#{num} min ago": "one#пре {num} минута|few#пре {num} минута|#пре {num} минута",
    "1#1 minute ago|#{num} minutes ago": "one#пре {num} минута|few#пре {num} минута|#пре {num} минута",
    "1#1 minute|#{num} minutes": "one#{num} минут|few#{num} минута|#{num} минута",
    "1#1 min|#{num} min": "one#{num} мин|few#{num} мин|#{num} мин",
    "1#1 mi|#{num} min": "one#{num} м|few#{num} м|#{num} м",
    "1#1 mon ago|#{num} mons ago": "one#пре {num} месеца|few#пре {num} месеца|#пре {num} месеци",
    "1#1 month ago|#{num} months ago": "one#пре {num} месеца|few#пре {num} месеца|#пре {num} месеци",
    "1#1 month|#{num} months": "one#{num} месец|few#{num} месеца|#{num} месеци",
    "1#1 mon|#{num} mons": "one#{num} мес.|few#{num} мес.|#{num} мес.",
    "1#1 mo|#{num} mos": "one#{num} м|few#{num} м|#{num} м",
    "1#1 sec ago|#{num} sec ago": "one#пре {num} секунде|few#пре {num} секунде|#пре {num} секунди",
    "1#1 second ago|#{num} seconds ago": "one#пре {num} секунде|few#пре {num} секунде|#пре {num} секунди",
    "1#1 second|#{num} seconds": "one#{num} секунда|few#{num} секунде|#{num} секунди",
    "1#1 sec|#{num} sec": "one#{num} сек|few#{num} сек|#{num} сек",
    "1#1 se|#{num} sec": "one#{num} с|few#{num} с|#{num} с",
    "1#1 week ago|#{num} weeks ago": "one#пре {num} недеље|few#пре {num} недеље|#пре {num} недеља",
    "1#1 week|#{num} weeks": "one#{num} недеља|few#{num} недеље|#{num} недеља",
    "1#1 wk ago|#{num} wks ago": "one#пре {num} недеље|few#пре {num} недеље|#пре {num} недеља",
    "1#1 wk|#{num} wks": "one#{num} нед.|few#{num} нед.|#{num} нед.",
    "1#1 year ago|#{num} years ago": "one#пре {num} године|few#пре {num} године|#пре {num} година",
    "1#1 year|#{num} years": "one#{num} година|few#{num} године|#{num} година",
    "1#1 yr ago|#{num} yrs ago": "one#пре {num} године|few#пре {num} године|#пре {num} година",
    "1#1 yr|#{num} yrs": "one#{num} год|few#{num} год.|#{num} год.",
    "1#in 1 day|#in {num} days": "one#за {num} дан|few#за {num} дана|#за {num} дана",
    "1#in 1 dy|#in {num} dys": "one#за {num} дан|few#за {num} дана|#за {num} дана",
    "1#in 1 hour|#in {num} hours": "one#за {num} сат|few#за {num} сата|#за {num} сати",
    "1#in 1 hr|#in {num} hrs": "one#за {num} сат|few#за {num} сата|#за {num} сати",
    "1#in 1 minute|#in {num} minutes": "one#за {num} минут|few#за {num} минута|#за {num} минута",
    "1#in 1 min|#in {num} min": "one#за {num} минут|few#за {num} минута|#за {num} минута",
    "1#in 1 month|#in {num} months": "one#за {num} месец|few#за {num} месеца|#за {num} месеци",
    "1#in 1 mon|#in {num} mons": "one#за {num} месец|few#за {num} месеца|#за {num} месеци",
    "1#in 1 second|#in {num} seconds": "one#за {num} секунду|few#за {num} секунде|#за {num} секунди",
    "1#in 1 sec|#in {num} sec": "one#за {num} секунду|few#за {num} секунде|#за {num} секунди",
    "1#in 1 week|#in {num} weeks": "one#за {num} недељу|few#за {num} недеље|#за {num} недеља",
    "1#in 1 wk|#in {num} wks": "one#за {num} недељу|few#за {num} недеље|#за {num} недеља",
    "1#in 1 year|#in {num} years": "one#за {num} годину|few#за {num} године|#за {num} година",
    "1#in 1 yr|#in {num} yrs": "one#за {num} годину|few#за {num} године|#за {num} година",
    "B0": "поноћ",
    "B1": "AM",
    "B2": "ујутро",
    "B3": "подне",
    "B4": "по подне",
    "B5": "PM",
    "B6": "увече",
    "B7": "ноћу",
    "E0": "н",
    "E1": "п",
    "E2": "у",
    "E3": "с",
    "E4": "ч",
    "E5": "п",
    "E6": "с",
    "EE0": "не",
    "EE1": "по",
    "EE2": "ут",
    "EE3": "ср",
    "EE4": "че",
    "EE5": "пе",
    "EE6": "су",
    "EEE0": "нед",
    "EEE1": "пон",
    "EEE2": "уто",
    "EEE3": "сре",
    "EEE4": "чет",
    "EEE5": "пет",
    "EEE6": "суб",
    "EEEE0": "недеља",
    "EEEE1": "понедељак",
    "EEEE2": "уторак",
    "EEEE3": "среда",
    "EEEE4": "четвртак",
    "EEEE5": "петак",
    "EEEE6": "субота",
    "G-1": "п. н. е.",
    "G1": "н. е.",
    "MMM1": "јан",
    "MMM10": "окт",
    "MMM11": "нов",
    "MMM12": "дец",
    "MMM2": "феб",
    "MMM3": "мар",
    "MMM4": "апр",
    "MMM5": "мај",
    "MMM6": "јун",
    "MMM7": "јул",
    "MMM8": "авг",
    "MMM9": "сеп",
    "MMMM1": "јануар",
    "MMMM10": "октобар",
    "MMMM11": "новембар",
    "MMMM12": "децембар",
    "MMMM2": "фебруар",
    "MMMM3": "март",
    "MMMM4": "април",
    "MMMM5": "мај",
    "MMMM6": "јун",
    "MMMM7": "јул",
    "MMMM8": "август",
    "MMMM9": "септембар",
    "N1": "ј",
    "N10": "о",
    "N11": "н",
    "N12": "д",
    "N2": "ф",
    "N3": "м",
    "N4": "а",
    "N5": "м",
    "N6": "ј",
    "N7": "ј",
    "N8": "а",
    "N9": "с",
    "NN1": "ја",
    "NN10": "ок",
    "NN11": "но",
    "NN12": "де",
    "NN2": "фе",
    "NN3": "ма",
    "NN4": "ап",
    "NN5": "ма",
    "NN6": "ју",
    "NN7": "ју",
    "NN8": "ав",
    "NN9": "се",
    "durationLongDays": "one#{num} дан|few#{num} дана|#{num} дана",
    "durationMediumHours": "one#{num} ч|few#{num} ч|#{num} ч",
    "durationMediumMillis": "#{num} ms",
    "durationMediumWeeks": "one#{num} н|few#{num} н|#{num} н",
    "durationMediumYears": "one#{num} г|few#{num} г|#{num} г",
    "durationShortMillis": "#{num} ms",
    "durationShortMinutes": "one#{num} м|few#{num} м|#{num} м",
    "durationShortMonths": "one#{num} м|few#{num} м|#{num} м",
    "finalSeparatorFull": " и ",
    "finalSeparatorLong": " и ",
    "finalSeparatorMedium": " и ",
    "finalSeparatorShort": " и ",
    "separatorMedium": ", ",
    "separatorShort": ", "
}
ilib.data.sysres_sr_Latn = {
    "#in {num}d": "one#za {num} d.|few#za {num} d.|#za {num} d.",
    "#in {num}h": "one#za {num} č.|few#za {num} č.|#za {num} č.",
    "#in {num}mi": "one#za {num} min.|few#za {num} min.|#za {num} min.",
    "#in {num}mo": "one#za {num} mes.|few#za {num} mes.|#za {num} mes.",
    "#in {num}s": "one#za {num} sek.|few#za {num} sek.|#za {num} sek.",
    "#in {num}w": "one#za {num} ned.|few#za {num} ned.|#za {num} ned.",
    "#in {num}y": "one#za {num} god.|few#za {num} god.|#za {num} god.",
    "#{num}d": "one#{num} d|few#{num} d|#{num} d",
    "#{num}d ago": "one#pre {num} d.|few#pre {num} d.|#pre {num} d.",
    "#{num}h": "one#{num} č|few#{num} č|#{num} č",
    "#{num}h ago": "one#pre {num} č.|few#pre {num} č.|#pre {num} č.",
    "#{num}mi ago": "one#pre {num} min.|few#pre {num} min.|#pre {num} min.",
    "#{num}mo ago": "one#pre {num} mes.|few#pre {num} mes.|#pre {num} mes.",
    "#{num}s": "one#{num} s|few#{num} s|#{num} s",
    "#{num}s ago": "one#pre {num} sek.|few#pre {num} sek.|#pre {num} sek.",
    "#{num}w": "one#{num} n|few#{num} n|#{num} n",
    "#{num}w ago": "one#pre {num} ned.|few#pre {num} ned.|#pre {num} ned.",
    "#{num}y": "one#{num} g|few#{num} g|#{num} g",
    "#{num}y ago": "one#pre {num} god.|few#pre {num} god.|#pre {num} god.",
    "1#1 day ago|#{num} days ago": "one#pre {num} dana|few#pre {num} dana|#pre {num} dana",
    "1#1 day|#{num} days": "one#{num} dan|few#{num} dana|#{num} dana",
    "1#1 dy ago|#{num} dys ago": "one#pre {num} dana|few#pre {num} dana|#pre {num} dana",
    "1#1 dy|#{num} dys": "one#{num} d|few#{num} d|#{num} d",
    "1#1 hour ago|#{num} hours ago": "one#pre {num} sata|few#pre {num} sata|#pre {num} sati",
    "1#1 hour|#{num} hours": "one#{num} sat|few#{num} sata|#{num} sati",
    "1#1 hr ago|#{num} hrs ago": "one#pre {num} sata|few#pre {num} sata|#pre {num} sati",
    "1#1 hr|#{num} hrs": "one#{num} sat|few#{num} sata|#{num} sati",
    "1#1 millisecond|#{num} milliseconds": "one#{num} milisekunda|few#{num} milisekunde|#{num} milisekundi",
    "1#1 min ago|#{num} min ago": "one#pre {num} minuta|few#pre {num} minuta|#pre {num} minuta",
    "1#1 minute ago|#{num} minutes ago": "one#pre {num} minuta|few#pre {num} minuta|#pre {num} minuta",
    "1#1 minute|#{num} minutes": "one#{num} minut|few#{num} minuta|#{num} minuta",
    "1#1 min|#{num} min": "one#{num} min|few#{num} min|#{num} min",
    "1#1 mi|#{num} min": "one#{num} m|few#{num} m|#{num} m",
    "1#1 mon ago|#{num} mons ago": "one#pre {num} meseca|few#pre {num} meseca|#pre {num} meseci",
    "1#1 month ago|#{num} months ago": "one#pre {num} meseca|few#pre {num} meseca|#pre {num} meseci",
    "1#1 month|#{num} months": "one#{num} mesec|few#{num} meseca|#{num} meseci",
    "1#1 mon|#{num} mons": "one#{num} mes.|few#{num} mes.|#{num} mes.",
    "1#1 mo|#{num} mos": "one#{num} m|few#{num} m|#{num} m",
    "1#1 sec ago|#{num} sec ago": "one#pre {num} sekunde|few#pre {num} sekunde|#pre {num} sekundi",
    "1#1 second ago|#{num} seconds ago": "one#pre {num} sekunde|few#pre {num} sekunde|#pre {num} sekundi",
    "1#1 second|#{num} seconds": "one#{num} sekunda|few#{num} sekunde|#{num} sekundi",
    "1#1 sec|#{num} sec": "one#{num} sek|few#{num} sek|#{num} sek",
    "1#1 se|#{num} sec": "one#{num} s|few#{num} s|#{num} s",
    "1#1 week ago|#{num} weeks ago": "one#pre {num} nedelje|few#pre {num} nedelje|#pre {num} nedelja",
    "1#1 week|#{num} weeks": "one#{num} nedelja|few#{num} nedelje|#{num} nedelja",
    "1#1 wk ago|#{num} wks ago": "one#pre {num} nedelje|few#pre {num} nedelje|#pre {num} nedelja",
    "1#1 wk|#{num} wks": "one#{num} ned.|few#{num} ned.|#{num} ned.",
    "1#1 year ago|#{num} years ago": "one#pre {num} godine|few#pre {num} godine|#pre {num} godina",
    "1#1 year|#{num} years": "one#{num} godina|few#{num} godine|#{num} godina",
    "1#1 yr ago|#{num} yrs ago": "one#pre {num} godine|few#pre {num} godine|#pre {num} godina",
    "1#1 yr|#{num} yrs": "one#{num} god|few#{num} god.|#{num} god.",
    "1#in 1 day|#in {num} days": "one#za {num} dan|few#za {num} dana|#za {num} dana",
    "1#in 1 dy|#in {num} dys": "one#za {num} dan|few#za {num} dana|#za {num} dana",
    "1#in 1 hour|#in {num} hours": "one#za {num} sat|few#za {num} sata|#za {num} sati",
    "1#in 1 hr|#in {num} hrs": "one#za {num} sat|few#za {num} sata|#za {num} sati",
    "1#in 1 minute|#in {num} minutes": "one#za {num} minut|few#za {num} minuta|#za {num} minuta",
    "1#in 1 min|#in {num} min": "one#za {num} minut|few#za {num} minuta|#za {num} minuta",
    "1#in 1 month|#in {num} months": "one#za {num} mesec|few#za {num} meseca|#za {num} meseci",
    "1#in 1 mon|#in {num} mons": "one#za {num} mesec|few#za {num} meseca|#za {num} meseci",
    "1#in 1 second|#in {num} seconds": "one#za {num} sekundu|few#za {num} sekunde|#za {num} sekundi",
    "1#in 1 sec|#in {num} sec": "one#za {num} sekundu|few#za {num} sekunde|#za {num} sekundi",
    "1#in 1 week|#in {num} weeks": "one#za {num} nedelju|few#za {num} nedelje|#za {num} nedelja",
    "1#in 1 wk|#in {num} wks": "one#za {num} nedelju|few#za {num} nedelje|#za {num} nedelja",
    "1#in 1 year|#in {num} years": "one#za {num} godinu|few#za {num} godine|#za {num} godina",
    "1#in 1 yr|#in {num} yrs": "one#za {num} godinu|few#za {num} godine|#za {num} godina",
    "B0": "ponoć",
    "B2": "ujutro",
    "B3": "podne",
    "B4": "po podne",
    "B6": "uveče",
    "B7": "noću",
    "E0": "n",
    "E1": "p",
    "E2": "u",
    "E3": "s",
    "E4": "č",
    "E5": "p",
    "E6": "s",
    "EE0": "ne",
    "EE1": "po",
    "EE2": "ut",
    "EE3": "sr",
    "EE4": "če",
    "EE5": "pe",
    "EE6": "su",
    "EEE0": "ned",
    "EEE1": "pon",
    "EEE2": "uto",
    "EEE3": "sre",
    "EEE4": "čet",
    "EEE5": "pet",
    "EEE6": "sub",
    "EEEE0": "nedelja",
    "EEEE1": "ponedeljak",
    "EEEE2": "utorak",
    "EEEE3": "sreda",
    "EEEE4": "četvrtak",
    "EEEE5": "petak",
    "EEEE6": "subota",
    "G-1": "p. n. e.",
    "G1": "n. e.",
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
    "LL8": "av",
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
    "LLL8": "avg",
    "LLL9": "sep",
    "LLLL1": "januar",
    "LLLL10": "oktobar",
    "LLLL11": "novembar",
    "LLLL12": "decembar",
    "LLLL2": "februar",
    "LLLL3": "mart",
    "LLLL4": "april",
    "LLLL5": "maj",
    "LLLL6": "jun",
    "LLLL7": "jul",
    "LLLL8": "avgust",
    "LLLL9": "septembar",
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
    "MMM8": "avg",
    "MMM9": "sep",
    "MMMM1": "januar",
    "MMMM10": "oktobar",
    "MMMM11": "novembar",
    "MMMM12": "decembar",
    "MMMM2": "februar",
    "MMMM3": "mart",
    "MMMM4": "april",
    "MMMM5": "maj",
    "MMMM6": "jun",
    "MMMM7": "jul",
    "MMMM8": "avgust",
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
    "NN8": "av",
    "NN9": "se",
    "durationLongDays": "one#{num} dan|few#{num} dana|#{num} dana",
    "durationMediumHours": "one#{num} č|few#{num} č|#{num} č",
    "durationMediumWeeks": "one#{num} n|few#{num} n|#{num} n",
    "durationMediumYears": "one#{num} g|few#{num} g|#{num} g",
    "durationShortMinutes": "one#{num} m|few#{num} m|#{num} m",
    "durationShortMonths": "one#{num} m|few#{num} m|#{num} m",
    "finalSeparatorFull": " i ",
    "finalSeparatorLong": " i ",
    "finalSeparatorMedium": " i ",
    "finalSeparatorShort": " i "
}
ilib.data.sysres_sr_Latn_ME = {
    "B1": "prije podne",
    "B2": "jutro",
    "B4": "po pod.",
    "B5": "po podne",
    "B6": "veče",
    "EEEE0": "nedjelja",
    "EEEE3": "srijeda",
    "LLL3": "mart",
    "LLL9": "sept",
    "MMM3": "mart",
    "MMM9": "sept",
    "a0": "prije podne",
    "a1": "po podne"
}
ilib.data.localeinfo_und_RS = {
    "clock": "24",
    "currency": "RSD",
    "firstDayOfWeek": 1,
    "locale": "RS",
    "region.name": "Serbia",
    "timezone": "Europe/Belgrade"
}