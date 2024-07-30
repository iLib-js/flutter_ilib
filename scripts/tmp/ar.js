ilib.data.plurals_ar = {
    "few": {
        "eq": [
            {
                "mod": [
                    "n",
                    100
                ]
            },
            [
                3,
                10
            ]
        ]
    },
    "many": {
        "eq": [
            {
                "mod": [
                    "n",
                    100
                ]
            },
            [
                11,
                99
            ]
        ]
    },
    "one": {
        "eq": [
            "n",
            1
        ]
    },
    "two": {
        "eq": [
            "n",
            2
        ]
    },
    "zero": {
        "eq": [
            "n",
            0
        ]
    }
}
ilib.data.localeinfo_ar = {
    "clock": "12",
    "delimiter": {
        "alternateQuotationEnd": "‘",
        "alternateQuotationStart": "’",
        "quotationEnd": "“",
        "quotationStart": "”"
    },
    "language.name": "Arabic",
    "locale": "ar",
    "numfmt": {
        "currencyFormats": {
            "common": "‏{n} {s}",
            "commonNegative": "؜-‏{n} {s}"
        },
        "decimalChar": "٫",
        "digits": "٠١٢٣٤٥٦٧٨٩",
        "exponential": "أس",
        "groupChar": "٬",
        "negativenumFmt": "؜-{n}",
        "negativepctFmt": "؜-{n}٪؜",
        "pctChar": "٪؜",
        "pctFmt": "{n}٪؜",
        "script": "Arab",
        "useNative": true
    },
    "scripts": [
        "Arab",
        "Syrc"
    ]
}
ilib.data.localeinfo_ar_AE = {
    "locale": "ar-AE",
    "native_numfmt": {
        "currencyFormats": {
            "common": "‏{n} {s}",
            "commonNegative": "؜-‏{n} {s}"
        },
        "decimalChar": "٫",
        "digits": "٠١٢٣٤٥٦٧٨٩",
        "exponential": "أس",
        "groupChar": "٬",
        "negativenumFmt": "؜-{n}",
        "negativepctFmt": "؜-{n}٪؜",
        "pctChar": "٪؜",
        "pctFmt": "{n}٪؜",
        "prigroupSize": 3,
        "roundingMode": "halfdown",
        "script": "Arab",
        "useNative": true
    },
    "numfmt": {
        "currencyFormats": {
            "commonNegative": "‏-{n} {s}"
        },
        "decimalChar": ".",
        "exponential": "E",
        "groupChar": ",",
        "negativenumFmt": "‎-{n}",
        "negativepctFmt": "‎-{n}‎%‎",
        "pctChar": "‎%‎",
        "pctFmt": "{n}‎%‎",
        "script": "Latn",
        "useNative": false
    }
}
ilib.data.localeinfo_und_AE = {
    "clock": "12",
    "currency": "AED",
    "firstDayOfWeek": 6,
    "locale": "AE",
    "region.name": "United Arab Emirates",
    "timezone": "Asia/Dubai"
}
ilib.data.dateformats_ar = {
    "dayPeriods": [
        {
            "from": 0,
            "to": 60
        },
        {
            "from": 0,
            "to": 720
        },
        {
            "from": 60,
            "to": 180
        },
        {
            "from": 180,
            "to": 360
        },
        {
            "from": 360,
            "to": 720
        },
        {
            "from": 720,
            "to": 780
        },
        {
            "from": 720,
            "to": 1440
        },
        {
            "from": 780,
            "to": 1080
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
                "s": "d"
            },
            "dm": {
                "f": "‏d MMMM",
                "l": "‏d MMMM",
                "m": "‏dd/MM",
                "s": "‏d/M"
            },
            "dmw": {
                "f": "EEEE، ‏d MMMM",
                "l": "EEE، ‏d MMMM",
                "m": "EE، ‏dd/MM",
                "s": "E، ‏d/M"
            },
            "dmwy": {
                "f": "EEEE، d MMMM yyyy",
                "l": "EEE، d MMMM yyyy",
                "m": "EE، dd/MM/yyyy",
                "s": "E، d/M/yyyy"
            },
            "dmy": {
                "f": "‏d MMMM yyyy",
                "l": "‏d MMMM yyyy",
                "m": "‏dd/MM/yyyy",
                "s": "‏d/M/yyyy"
            },
            "dw": {
                "f": "EEEE، d",
                "l": "EEE، d",
                "m": "EE، dd",
                "s": "E، d"
            },
            "m": {
                "l": "MMMM"
            },
            "my": {
                "l": "MMMM yyyy",
                "m": "‏MM/yyyy",
                "s": "‏M/yyyy"
            },
            "y": {
                "s": "yyyy"
            }
        },
        "order": {
            "f": "{date} في {time}",
            "l": "{date} في {time}",
            "m": "{date}، {time}",
            "s": "{date}، {time}"
        },
        "range": {
            "c00": {
                "f": "‏{sd} {sm} {sy} في {st} – {et}",
                "l": "‏{sd} {sm} {sy} في {st} – {et}",
                "m": "‏{sd}/{sm}/{sy}، {st} – {et}",
                "s": "‏{sd}/{sm}/{sy}، {st} – {et}"
            },
            "c01": {
                "f": "‏{sd} {sm} {sy} في {st} – ‏{ed} {em} {ey} في {et}",
                "l": "‏{sd} {sm} {sy} في {st} – ‏{ed} {em} {ey} في {et}",
                "m": "‏{sd}/{sm}/{sy}، {st} – ‏{ed}/{em}/{ey}، {et}",
                "s": "‏{sd}/{sm}/{sy}، {st} – ‏{ed}/{em}/{ey}، {et}"
            },
            "c02": {
                "f": "‏{sd} {sm} {sy} في {st} – ‏{ed} {em} {ey} في {et}",
                "l": "‏{sd} {sm} {sy} في {st} – ‏{ed} {em} {ey} في {et}",
                "m": "‏{sd}/{sm}/{sy}، {st} – ‏{ed}/{em}/{ey}، {et}",
                "s": "‏{sd}/{sm}/{sy}، {st} – ‏{ed}/{em}/{ey}، {et}"
            },
            "c03": {
                "f": "‏{sd} {sm} {sy} في {st} – ‏{ed} {em} {ey} في {et}",
                "l": "‏{sd} {sm} {sy} في {st} – ‏{ed} {em} {ey} في {et}",
                "m": "‏{sd}/{sm}/{sy}، {st} – ‏{ed}/{em}/{ey}، {et}",
                "s": "‏{sd}/{sm}/{sy}، {st} – ‏{ed}/{em}/{ey}، {et}"
            },
            "c10": {
                "f": "‏{sd} – ‏{ed} {em} {ey}",
                "l": "‏{sd} – ‏{ed} {em} {ey}",
                "m": "‏{sd} – ‏{ed}/{em}/{ey}",
                "s": "‏{sd} – ‏{ed}/{em}/{ey}"
            },
            "c11": {
                "f": "‏{sd} {sm} – ‏{ed} {em} {ey}",
                "l": "‏{sd} {sm} – ‏{ed} {em} {ey}",
                "m": "‏{sd}/{sm} – ‏{ed}/{em}/{ey}",
                "s": "‏{sd}/{sm} – ‏{ed}/{em}/{ey}"
            },
            "c12": {
                "f": "‏{sd} {sm} {sy} – ‏{ed} {em} {ey}",
                "l": "‏{sd} {sm} {sy} – ‏{ed} {em} {ey}",
                "m": "‏{sd}/{sm}/{sy} – ‏{ed}/{em}/{ey}",
                "s": "‏{sd}/{sm}/{sy} – ‏{ed}/{em}/{ey}"
            },
            "c20": {
                "m": "‏{sm}/{sy} – ‏{em}/{ey}",
                "s": "‏{sm}/{sy} – ‏{em}/{ey}"
            },
            "c30": {
                "f": "‏{sy} – {ey}",
                "l": "‏{sy} – {ey}",
                "m": "‏{sy} – {ey}",
                "s": "‏{sy} – {ey}"
            }
        },
        "time": {
            "12": {
                "ah": "‏h a",
                "ahm": "‏h:mm a",
                "ahms": "‏h:mm:ss a",
                "ahmsz": "‏h:mm:ss a z",
                "ahmz": "‏h:mm a z",
                "hm": "‏h:mm",
                "hms": "‏h:mm:ss",
                "hmsz": "‏h:mm:ss z",
                "hmz": "‏h:mm z"
            },
            "24": {
                "ah": "‏HH",
                "ahm": "‏HH:mm",
                "ahms": "‏HH:mm:ss",
                "ahmsz": "‏HH:mm:ss z",
                "ahmz": "‏HH:mm z",
                "h": "HH",
                "hm": "‏HH:mm",
                "hms": "‏HH:mm:ss",
                "hmsz": "‏HH:mm:ss z",
                "hmz": "‏HH:mm z"
            }
        }
    }
}
ilib.data.sysres_ar = {
    "#in {num}d": "zero#‏خلال {num} يوم|one#‏خلال يوم واحد|two#‏خلال يومين|few#‏خلال {num} أيام|many#‏خلال {num} يومًا|#‏خلال {num} يوم",
    "#in {num}h": "zero#‏خلال {num} ساعة|one#‏خلال ساعة واحدة|two#‏خلال ساعتين|few#‏خلال {num} ساعات|many#‏خلال {num} ساعة|#‏خلال {num} ساعة",
    "#in {num}mi": "zero#‏خلال {num} دقيقة|one#‏خلال دقيقة واحدة|two#‏خلال دقيقتين|few#‏خلال {num} دقائق|many#‏خلال {num} دقيقة|#‏خلال {num} دقيقة",
    "#in {num}mo": "zero#‏خلال {num} شهر|one#‏خلال شهر واحد|two#‏خلال شهرين|few#‏خلال {num} أشهر|many#‏خلال {num} شهرًا|#‏خلال {num} شهر",
    "#in {num}s": "zero#‏خلال {num} ثانية|one#‏خلال ثانية واحدة|two#‏خلال ثانيتين|few#‏خلال {num} ثوانٍ|many#‏خلال {num} ثانية|#‏خلال {num} ثانية",
    "#in {num}w": "zero#‏خلال {num} أسبوع|one#‏خلال أسبوع واحد|two#‏خلال {num} أسبوعين|few#‏خلال {num} أسابيع|many#‏خلال {num} أسبوعًا|#‏خلال {num} أسبوع",
    "#in {num}y": "zero#‏خلال {num} سنة|one#‏خلال سنة واحدة|two#‏خلال سنتين|few#‏خلال {num} سنوات|many#‏خلال {num} سنة|#‏خلال {num} سنة",
    "#{num} ms": "zero#{num} ملي ث|one#{num} ملي ث|two#{num} ملي ث|few#{num} ملي ث|many#{num} ملي ث|#{num} ملي ث",
    "#{num}d": "zero#{num} ي|one#{num} ي|two#{num} ي|few#{num} ي|many#{num} ي|#{num} ي",
    "#{num}d ago": "zero#‏قبل {num} يوم|one#‏قبل يوم واحد|two#‏قبل يومين|few#‏قبل {num} أيام|many#‏قبل {num} يومًا|#‏قبل {num} يوم",
    "#{num}h": "zero#{num} س|one#{num} س|two#{num} س|few#{num} س|many#{num} س|#{num} س",
    "#{num}h ago": "zero#‏قبل {num} ساعة|one#‏قبل ساعة واحدة|two#‏قبل ساعتين|few#‏قبل {num} ساعات|many#‏قبل {num} ساعة|#‏قبل {num} ساعة",
    "#{num}mi ago": "zero#‏قبل {num} دقيقة|one#‏قبل دقيقة واحدة|two#‏قبل دقيقتين|few#‏قبل {num} دقائق|many#‏قبل {num} دقيقة|#‏قبل {num} دقيقة",
    "#{num}mo ago": "zero#‏قبل {num} شهر|one#‏قبل شهر واحد|two#‏قبل شهرين|few#‏خلال {num} أشهر|many#‏قبل {num} شهرًا|#‏قبل {num} شهر",
    "#{num}s": "zero#{num} ث|one#{num} ث|two#{num} ث|few#{num} ث|many#{num} ث|#{num} ث",
    "#{num}s ago": "zero#‏قبل {num} ثانية|one#‏قبل ثانية واحدة|two#‏قبل ثانيتين|few#‏قبل {num} ثوانٍ|many#‏قبل {num} ثانية|#‏قبل {num} ثانية",
    "#{num}w": "zero#{num} أ|one#{num} أ|two#{num} أ|few#{num} أ|many#{num} أ|#{num} أ",
    "#{num}w ago": "zero#‏قبل {num} أسبوع|one#‏قبل أسبوع واحد|two#‏قبل أسبوعين|few#‏قبل {num} أسابيع|many#‏قبل {num} أسبوعًا|#‏قبل {num} أسبوع",
    "#{num}y": "zero#{num} سنة|one#{num} سنة|two#{num} سنة|few#{num} سنة|many#{num} سنة|#{num} سنة",
    "#{num}y ago": "zero#‏قبل {num} سنة|one#‏قبل سنة واحدة|two#‏قبل سنتين|few#‏قبل {num} سنوات|many#‏قبل {num} سنة|#‏قبل {num} سنة",
    "1#1 day ago|#{num} days ago": "zero#‏قبل {num} يوم|one#‏قبل يوم واحد|two#‏قبل يومين|few#‏قبل {num} أيام|many#‏قبل {num} يومًا|#‏قبل {num} يوم",
    "1#1 day|#{num} days": "zero#{num} يوم|one#يوم|two#يومان|few#{num} أيام|many#{num} يومًا|#{num} يوم",
    "1#1 dy ago|#{num} dys ago": "zero#‏قبل {num} يوم|one#‏قبل يوم واحد|two#‏قبل يومين|few#‏قبل {num} أيام|many#‏قبل {num} يومًا|#‏قبل {num} يوم",
    "1#1 dy|#{num} dys": "zero#{num} ي|one#{num} ي|two#{num} ي|few#{num} ي|many#{num} ي|#{num} ي",
    "1#1 hour ago|#{num} hours ago": "zero#‏قبل {num} ساعة|one#‏قبل ساعة واحدة|two#‏قبل ساعتين|few#‏قبل {num} ساعات|many#‏قبل {num} ساعة|#‏قبل {num} ساعة",
    "1#1 hour|#{num} hours": "zero#{num} ساعة|one#ساعة|two#ساعتان|few#{num} ساعات|many#{num} ساعة|#{num} ساعة",
    "1#1 hr ago|#{num} hrs ago": "zero#‏قبل {num} ساعة|one#‏قبل ساعة واحدة|two#‏قبل ساعتين|few#‏قبل {num} ساعات|many#‏قبل {num} ساعة|#‏قبل {num} ساعة",
    "1#1 hr|#{num} hrs": "zero#{num} س|one#{num} س|two#{num} س|few#{num} س|many#{num} س|#{num} س",
    "1#1 millisecond|#{num} milliseconds": "zero#{num} ملي ثانية|one#{num} ملي ثانية|two#{num} ملي ثانية|few#{num} ملي ثانية|many#{num} ملي ثانية|#{num} ملي ثانية",
    "1#1 min ago|#{num} min ago": "zero#‏قبل {num} دقيقة|one#‏قبل دقيقة واحدة|two#‏قبل دقيقتين|few#‏قبل {num} دقائق|many#‏قبل {num} دقيقة|#‏قبل {num} دقيقة",
    "1#1 minute ago|#{num} minutes ago": "zero#‏قبل {num} دقيقة|one#‏قبل دقيقة واحدة|two#‏قبل دقيقتين|few#‏قبل {num} دقائق|many#‏قبل {num} دقيقة|#‏قبل {num} دقيقة",
    "1#1 minute|#{num} minutes": "zero#{num} دقيقة|one#دقيقة|two#دقيقتان|few#{num} دقائق|many#{num} دقيقة|#{num} دقيقة",
    "1#1 min|#{num} min": "zero#{num} د|one#{num} د|two#{num} د|few#{num} د|many#{num} د|#{num} د",
    "1#1 mi|#{num} min": "zero#{num} د|one#{num} د|two#{num} د|few#{num} د|many#{num} د|#{num} د",
    "1#1 mon ago|#{num} mons ago": "zero#‏قبل {num} شهر|one#‏قبل شهر واحد|two#‏قبل شهرين|few#‏قبل {num} أشهر|many#‏قبل {num} شهرًا|#‏قبل {num} شهر",
    "1#1 month ago|#{num} months ago": "zero#‏قبل {num} شهر|one#‏قبل شهر واحد|two#‏قبل شهرين|few#‏قبل {num} أشهر|many#‏قبل {num} شهرًا|#‏قبل {num} شهر",
    "1#1 month|#{num} months": "zero#{num} شهر|one#شهر|two#شهران|few#{num} أشهر|many#{num} شهرًا|#{num} شهر",
    "1#1 mon|#{num} mons": "zero#{num} شهر|one#شهر|two#شهران|few#{num} أشهر|many#{num} شهرًا|#{num} شهر",
    "1#1 mo|#{num} mos": "zero#{num} شهر|one#شهر|two#شهران|few#{num} أشهر|many#{num} شهرًا|#{num} شهر",
    "1#1 sec ago|#{num} sec ago": "zero#‏قبل {num} ثانية|one#‏قبل ثانية واحدة|two#‏قبل ثانيتين|few#‏قبل {num} ثوانِ|many#‏قبل {num} ثانية|#‏قبل {num} ثانية",
    "1#1 second ago|#{num} seconds ago": "zero#‏قبل {num} ثانية|one#‏قبل ثانية واحدة|two#‏قبل ثانيتين|few#‏قبل {num} ثوانِ|many#‏قبل {num} ثانية|#‏قبل {num} ثانية",
    "1#1 second|#{num} seconds": "zero#{num} ثانية|one#ثانية|two#ثانيتان|few#{num} ثوان|many#{num} ثانية|#{num} ثانية",
    "1#1 sec|#{num} sec": "zero#{num} ث|one#{num} ث|two#{num} ث|few#{num} ث|many#{num} ث|#{num} ث",
    "1#1 se|#{num} sec": "zero#{num} ث|one#{num} ث|two#{num} ث|few#{num} ث|many#{num} ث|#{num} ث",
    "1#1 week ago|#{num} weeks ago": "zero#‏قبل {num} أسبوع|one#‏قبل أسبوع واحد|two#‏قبل أسبوعين|few#‏قبل {num} أسابيع|many#‏قبل {num} أسبوعًا|#‏قبل {num} أسبوع",
    "1#1 week|#{num} weeks": "zero#{num} أسبوع|one#أسبوع|two#أسبوعان|few#{num} أسابيع|many#{num} أسبوعًا|#{num} أسبوع",
    "1#1 wk ago|#{num} wks ago": "zero#‏قبل {num} أسبوع|one#‏قبل أسبوع واحد|two#‏قبل أسبوعين|few#‏قبل {num} أسابيع|many#‏قبل {num} أسبوعًا|#‏قبل {num} أسبوع",
    "1#1 wk|#{num} wks": "zero#{num} أسبوع|one#أسبوع|two#أسبوعان|few#{num} أسابيع|many#{num} أسبوعًا|#{num} أسبوع",
    "1#1 year ago|#{num} years ago": "zero#‏قبل {num} سنة|one#‏قبل سنة واحدة|two#‏قبل سنتين|few#‏قبل {num} سنوات|many#‏قبل {num} سنة|#‏قبل {num} سنة",
    "1#1 year|#{num} years": "zero#{num} سنة|one#سنة|two#سنتان|few#{num} سنوات|many#{num} سنة|#{num} سنة",
    "1#1 yr ago|#{num} yrs ago": "zero#‏قبل {num} سنة|one#‏قبل سنة واحدة|two#‏قبل سنتين|few#‏قبل {num} سنوات|many#‏قبل {num} سنة|#‏قبل {num} سنة",
    "1#1 yr|#{num} yrs": "zero#{num} سنة|one#سنة واحدة|two#سنتان|few#{num} سنوات|many#{num} سنة|#{num} سنة",
    "1#in 1 day|#in {num} days": "zero#‏خلال {num} يوم|one#‏خلال يوم واحد|two#‏خلال يومين|few#‏خلال {num} أيام|many#‏خلال {num} يومًا|#‏خلال {num} يوم",
    "1#in 1 dy|#in {num} dys": "zero#‏خلال {num} يوم|one#‏خلال يوم واحد|two#‏خلال يومين|few#‏خلال {num} أيام|many#‏خلال {num} يومًا|#‏خلال {num} يوم",
    "1#in 1 hour|#in {num} hours": "zero#‏خلال {num} ساعة|one#‏خلال ساعة واحدة|two#‏خلال ساعتين|few#‏خلال {num} ساعات|many#‏خلال {num} ساعة|#‏خلال {num} ساعة",
    "1#in 1 hr|#in {num} hrs": "zero#‏خلال {num} ساعة|one#‏خلال ساعة واحدة|two#‏خلال ساعتين|few#‏خلال {num} ساعات|many#‏خلال {num} ساعة|#‏خلال {num} ساعة",
    "1#in 1 minute|#in {num} minutes": "zero#‏خلال {num} دقيقة|one#‏خلال دقيقة واحدة|two#‏خلال دقيقتين|few#‏خلال {num} دقائق|many#‏خلال {num} دقيقة|#‏خلال {num} دقيقة",
    "1#in 1 min|#in {num} min": "zero#‏خلال {num} دقيقة|one#‏خلال دقيقة واحدة|two#‏خلال دقيقتين|few#‏خلال {num} دقائق|many#‏خلال {num} دقيقة|#‏خلال {num} دقيقة",
    "1#in 1 month|#in {num} months": "zero#‏خلال {num} شهر|one#‏خلال شهر واحد|two#‏خلال شهرين|few#‏خلال {num} أشهر|many#‏خلال {num} شهرًا|#‏خلال {num} شهر",
    "1#in 1 mon|#in {num} mons": "zero#‏خلال {num} شهر|one#‏خلال شهر واحد|two#‏خلال شهرين|few#‏خلال {num} أشهر|many#‏خلال {num} شهرًا|#‏خلال {num} شهر",
    "1#in 1 second|#in {num} seconds": "zero#‏خلال {num} ثانية|one#‏خلال ثانية واحدة|two#‏خلال ثانيتين|few#‏خلال {num} ثوانٍ|many#‏خلال {num} ثانية|#‏خلال {num} ثانية",
    "1#in 1 sec|#in {num} sec": "zero#‏خلال {num} ثانية|one#‏خلال ثانية واحدة|two#‏خلال ثانيتين|few#‏خلال {num} ثوانٍ|many#‏خلال {num} ثانية|#‏خلال {num} ثانية",
    "1#in 1 week|#in {num} weeks": "zero#‏خلال {num} أسبوع|one#‏خلال أسبوع واحد|two#‏خلال أسبوعين|few#‏خلال {num} أسابيع|many#‏خلال {num} أسبوعًا|#‏خلال {num} أسبوع",
    "1#in 1 wk|#in {num} wks": "zero#‏خلال {num} أسبوع|one#‏خلال أسبوع واحد|two#‏خلال أسبوعين|few#‏خلال {num} أسابيع|many#‏خلال {num} أسبوعًا|#‏خلال {num} أسبوع",
    "1#in 1 year|#in {num} years": "zero#‏خلال {num} سنة|one#‏خلال سنة واحدة|two#‏خلال سنتين|few#‏خلال {num} سنوات|many#‏خلال {num} سنة|#‏خلال {num} سنة",
    "1#in 1 yr|#in {num} yrs": "zero#‏خلال {num} سنة|one#‏خلال سنة واحدة|two#‏خلال سنتين|few#‏خلال {num} سنوات|many#‏خلال {num} سنة|#‏خلال {num} سنة",
    "B0": "في المساء",
    "B1": "ص",
    "B2": "ليلاً",
    "B3": "في الصباح",
    "B4": "صباحًا",
    "B5": "ظهرًا",
    "B6": "م",
    "B7": "بعد الظهر",
    "B8": "مساءً",
    "E0": "ح",
    "E1": "ن",
    "E2": "ث",
    "E3": "ر",
    "E4": "خ",
    "E5": "ج",
    "E6": "س",
    "EE0": "أحد",
    "EE1": "إثنين",
    "EE2": "ثلاثاء",
    "EE3": "أربعاء",
    "EE4": "خميس",
    "EE5": "جمعة",
    "EE6": "سبت",
    "EEE0": "الأحد",
    "EEE1": "الاثنين",
    "EEE2": "الثلاثاء",
    "EEE3": "الأربعاء",
    "EEE4": "الخميس",
    "EEE5": "الجمعة",
    "EEE6": "السبت",
    "EEEE0": "الأحد",
    "EEEE1": "الاثنين",
    "EEEE2": "الثلاثاء",
    "EEEE3": "الأربعاء",
    "EEEE4": "الخميس",
    "EEEE5": "الجمعة",
    "EEEE6": "السبت",
    "G-1": "ق. م",
    "G1": "ب.م",
    "MMM1": "يناير",
    "MMM10": "أكتوبر",
    "MMM11": "نوفمبر",
    "MMM12": "ديسمبر",
    "MMM2": "فبراير",
    "MMM3": "مارس",
    "MMM4": "أبريل",
    "MMM5": "مايو",
    "MMM6": "يونيو",
    "MMM7": "يوليو",
    "MMM8": "أغسطس",
    "MMM9": "سبتمبر",
    "MMMM1": "يناير",
    "MMMM10": "أكتوبر",
    "MMMM11": "نوفمبر",
    "MMMM12": "ديسمبر",
    "MMMM2": "فبراير",
    "MMMM3": "مارس",
    "MMMM4": "أبريل",
    "MMMM5": "مايو",
    "MMMM6": "يونيو",
    "MMMM7": "يوليو",
    "MMMM8": "أغسطس",
    "MMMM9": "سبتمبر",
    "N1": "ي",
    "N10": "أ",
    "N11": "ن",
    "N12": "د",
    "N2": "ف",
    "N3": "م",
    "N4": "أ",
    "N5": "م",
    "N6": "ي",
    "N7": "ي",
    "N8": "أ",
    "N9": "س",
    "NN1": "ين",
    "NN10": "أك",
    "NN11": "نو",
    "NN12": "دي",
    "NN2": "فب",
    "NN3": "ما",
    "NN4": "أب",
    "NN5": "ما",
    "NN6": "يو",
    "NN7": "يو",
    "NN8": "أغ",
    "NN9": "سب",
    "a0": "ص",
    "a1": "م",
    "durationLongDays": "zero#{num} يوم|one#يوم|two#يومان|few#{num} أيام|many#{num} يومًا|#{num} يوم",
    "durationMediumHours": "zero#{num} س|one#{num} س|two#{num} س|few#{num} س|many#{num} س|#{num} س",
    "durationMediumMillis": "zero#{num} ملي ث|one#{num} ملي ث|two#{num} ملي ث|few#{num} ملي ث|many#{num} ملي ث|#{num} ملي ث",
    "durationMediumWeeks": "zero#{num} أ|one#{num} أ|two#{num} أ|few#{num} أ|many#{num} أ|#{num} أ",
    "durationMediumYears": "zero#{num} سنة|one#{num} سنة|two#{num} سنة|few#{num} سنة|many#{num} سنة|#{num} سنة",
    "durationShortMillis": "zero#{num} ملي ث|one#{num} ملي ث|two#{num} ملي ث|few#{num} ملي ث|many#{num} ملي ث|#{num} ملي ث",
    "durationShortMinutes": "zero#{num} د|one#{num} د|two#{num} د|few#{num} د|many#{num} د|#{num} د",
    "durationShortMonths": "zero#{num} شهر|one#شهر|two#شهران|few#{num} أشهر|many#{num} شهرًا|#{num} شهر",
    "finalSeparatorFull": "، و",
    "finalSeparatorLong": "، و",
    "finalSeparatorMedium": "، و",
    "finalSeparatorShort": " و",
    "separatorFull": "، و",
    "separatorLong": "، و",
    "separatorMedium": "، و",
    "separatorShort": " و"
}
ilib.data.localeinfo_und_EG = {
    "clock": "12",
    "currency": "EGP",
    "firstDayOfWeek": 6,
    "locale": "EG",
    "region.name": "Egypt",
    "timezone": "Africa/Cairo",
    "weekendEnd": 6,
    "weekendStart": 5
}
ilib.data.localeinfo_und_IQ = {
    "clock": "12",
    "currency": "IQD",
    "firstDayOfWeek": 6,
    "locale": "IQ",
    "region.name": "Iraq",
    "timezone": "Asia/Baghdad",
    "weekendEnd": 6,
    "weekendStart": 5
}
ilib.data.dateformats_ar_IQ = {
    "gregorian": {
        "date": {
            "l": {
                "f": "LLLL",
                "l": "LLLL",
                "m": "LL",
                "s": "L"
            }
        }
    }
}
ilib.data.sysres_ar_IQ = {
    "L1": "ك",
    "L10": "ت",
    "L11": "ت",
    "L12": "ك",
    "L2": "ش",
    "L3": "آ",
    "L4": "ن",
    "L5": "أ",
    "L6": "ح",
    "L7": "ت",
    "L8": "آ",
    "L9": "أ",
    "LL1": "كا",
    "LL10": "تش",
    "LL11": "تش",
    "LL12": "كا",
    "LL2": "شب",
    "LL3": "آذ",
    "LL4": "ني",
    "LL5": "أي",
    "LL6": "حز",
    "LL7": "تم",
    "LL8": "آب",
    "LL9": "أي",
    "LLL1": "كانون الثاني",
    "LLL10": "تشرين الأول",
    "LLL11": "تشرين الثاني",
    "LLL12": "كانون الأول",
    "LLL2": "شباط",
    "LLL3": "آذار",
    "LLL4": "نيسان",
    "LLL5": "أيار",
    "LLL6": "حزيران",
    "LLL7": "تموز",
    "LLL8": "آب",
    "LLL9": "أيلول",
    "LLLL1": "كانون الثاني",
    "LLLL10": "تشرين الأول",
    "LLLL11": "تشرين الثاني",
    "LLLL12": "كانون الأول",
    "LLLL2": "شباط",
    "LLLL3": "آذار",
    "LLLL4": "نيسان",
    "LLLL5": "أيار",
    "LLLL6": "حزيران",
    "LLLL7": "تموز",
    "LLLL8": "آب",
    "LLLL9": "أيلول",
    "MMM1": "كانون الثاني",
    "MMM10": "تشرين الأول",
    "MMM11": "تشرين الثاني",
    "MMM12": "كانون الأول",
    "MMM2": "شباط",
    "MMM3": "آذار",
    "MMM4": "نيسان",
    "MMM5": "أيار",
    "MMM6": "حزيران",
    "MMM7": "تموز",
    "MMM8": "آب",
    "MMM9": "أيلول",
    "MMMM1": "كانون الثاني",
    "MMMM10": "تشرين الأول",
    "MMMM11": "تشرين الثاني",
    "MMMM12": "كانون الأول",
    "MMMM2": "شباط",
    "MMMM3": "آذار",
    "MMMM4": "نيسان",
    "MMMM5": "أيار",
    "MMMM6": "حزيران",
    "MMMM7": "تموز",
    "MMMM8": "آب",
    "MMMM9": "أيلول",
    "N1": "ك",
    "N10": "ت",
    "N11": "ت",
    "N12": "ك",
    "N2": "ش",
    "N3": "آ",
    "N4": "ن",
    "N5": "أ",
    "N6": "ح",
    "N7": "ت",
    "N8": "آ",
    "N9": "أ",
    "NN1": "كا",
    "NN10": "تش",
    "NN11": "تش",
    "NN12": "كا",
    "NN2": "شب",
    "NN3": "آذ",
    "NN4": "ني",
    "NN5": "أي",
    "NN6": "حز",
    "NN7": "تم",
    "NN8": "آب",
    "NN9": "أي"
}
ilib.data.localeinfo_ar_MA = {
    "locale": "ar-MA",
    "native_numfmt": {
        "currencyFormats": {
            "common": "‏{n} {s}",
            "commonNegative": "؜-‏{n} {s}"
        },
        "decimalChar": "٫",
        "digits": "٠١٢٣٤٥٦٧٨٩",
        "exponential": "أس",
        "groupChar": "٬",
        "negativenumFmt": "؜-{n}",
        "negativepctFmt": "؜-{n}٪؜",
        "pctChar": "٪؜",
        "pctFmt": "{n}٪؜",
        "prigroupSize": 3,
        "roundingMode": "halfdown",
        "script": "Arab",
        "useNative": true
    },
    "numfmt": {
        "currencyFormats": {
            "commonNegative": "‏-{n} {s}"
        },
        "decimalChar": ",",
        "exponential": "E",
        "groupChar": ".",
        "negativenumFmt": "‎-{n}",
        "negativepctFmt": "‎-{n}‎%‎",
        "pctChar": "‎%‎",
        "pctFmt": "{n}‎%‎",
        "script": "Latn",
        "useNative": false
    }
}
ilib.data.localeinfo_und_MA = {
    "clock": "24",
    "currency": "MAD",
    "locale": "MA",
    "region.name": "Morocco",
    "timezone": "Africa/Casablanca"
}
ilib.data.sysres_ar_MA = {
    "MMM11": "نونبر",
    "MMM12": "دجنبر",
    "MMM5": "ماي",
    "MMM7": "يوليوز",
    "MMM8": "غشت",
    "MMM9": "شتنبر",
    "MMMM11": "نونبر",
    "MMMM12": "دجنبر",
    "MMMM5": "ماي",
    "MMMM7": "يوليوز",
    "MMMM8": "غشت",
    "MMMM9": "شتنبر",
    "N8": "غ",
    "N9": "ش",
    "NN12": "دج",
    "NN8": "غش",
    "NN9": "شت"
}
ilib.data.localeinfo_und_SA = {
    "clock": "12",
    "currency": "SAR",
    "firstDayOfWeek": 0,
    "locale": "SA",
    "region.name": "Saudi Arabia",
    "timezone": "Asia/Riyadh",
    "weekendEnd": 6,
    "weekendStart": 5
}
ilib.data.sysres_ar_SA = {
    "#{num}y": "zero#{num} سنة|one#سنة|two#سنتان|few#{num} سنوات|many#{num} سنة|#{num} سنة",
    "1#1 second|#{num} seconds": "zero#{num} ثانية|one#ثانية|two#ثانيتان|few#{num} ثوانٍ|many#{num} ثانية|#{num} ثانية",
    "1#1 yr|#{num} yrs": "zero#{num} سنة|one#سنة|two#سنتان|few#{num} سنوات|many#{num} سنة|#{num} سنة",
    "durationMediumYears": "zero#{num} سنة|one#سنة|two#سنتان|few#{num} سنوات|many#{num} سنة|#{num} سنة"
}
