ilib.data.plurals_es = {
    "many": {
        "or": [
            {
                "and": [
                    {
                        "eq": [
                            "e",
                            0
                        ]
                    },
                    {
                        "neq": [
                            "i",
                            0
                        ]
                    },
                    {
                        "eq": [
                            {
                                "mod": [
                                    "i",
                                    1000000
                                ]
                            },
                            0
                        ]
                    },
                    {
                        "eq": [
                            "v",
                            0
                        ]
                    }
                ]
            },
            {
                "neq": [
                    "e",
                    [
                        0,
                        5
                    ]
                ]
            }
        ]
    },
    "one": {
        "eq": [
            "n",
            1
        ]
    }
}
ilib.data.localeinfo_es = {
    "language.name": "Spanish",
    "locale": "es",
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
        "Latn"
    ]
}
ilib.data.localeinfo_es_AR = {
    "locale": "es-AR",
    "numfmt": {
        "currencyFormats": {
            "common": "{s} {n}",
            "commonNegative": "-{s} {n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_AR = {
    "clock": "12",
    "currency": "ARS",
    "firstDayOfWeek": 1,
    "locale": "AR",
    "region.name": "Argentina",
    "timezone": "America/Argentina/Buenos_Aires"
}
ilib.data.dateformats_es = {
    "dayPeriods": [
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
            "to": 1200
        },
        {
            "from": 720,
            "to": 1440
        },
        {
            "from": 1200,
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
                "f": "d 'de' MMMM",
                "l": "d 'de' MMMM",
                "m": "d MMM"
            },
            "dmw": {
                "f": "EEEE, d 'de' MMMM",
                "l": "EEE, d 'de' MMMM",
                "m": "EE, d MMM",
                "s": "E, d/M"
            },
            "dmwy": {
                "f": "EEEE, d 'de' MMMM 'de' yyyy",
                "l": "EEE, d 'de' MMMM 'de' yyyy",
                "m": "EE, d MMM yyyy",
                "s": "E, d/M/yy"
            },
            "dmy": {
                "f": "d 'de' MMMM 'de' yyyy",
                "l": "d 'de' MMMM 'de' yyyy",
                "m": "d MMM yyyy"
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
                "f": "MMMM 'de' yyyy",
                "l": "MMMM 'de' yyyy",
                "m": "MMM yyyy"
            }
        },
        "order": "{date}, {time}",
        "range": {
            "c00": {
                "f": "{sd} de {sm} de {sy}, {st} – {et}",
                "l": "{sd} de {sm} de {sy}, {st} – {et}",
                "m": "{sd} {sm} {sy}, {st} – {et}",
                "s": "{sd}/{sm}/{sy}, {st} – {et}"
            },
            "c01": {
                "f": "{sd} de {sm} de {sy}, {st} – {ed} de {em} de {ey}, {et}",
                "l": "{sd} de {sm} de {sy}, {st} – {ed} de {em} de {ey}, {et}",
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c02": {
                "f": "{sd} de {sm} de {sy}, {st} – {ed} de {em} de {ey}, {et}",
                "l": "{sd} de {sm} de {sy}, {st} – {ed} de {em} de {ey}, {et}",
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c03": {
                "f": "{sd} de {sm} de {sy}, {st} – {ed} de {em} de {ey}, {et}",
                "l": "{sd} de {sm} de {sy}, {st} – {ed} de {em} de {ey}, {et}",
                "m": "{sd} {sm} {sy}, {st} – {ed} {em} {ey}, {et}",
                "s": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c10": {
                "f": "{sd} – {ed} de {em} de {ey}",
                "l": "{sd} – {ed} de {em} de {ey}",
                "m": "{sd} – {ed} {em} {ey}",
                "s": "{sd} – {ed}/{em}/{ey}"
            },
            "c11": {
                "f": "{sd} de {sm} – {ed} de {em} de {ey}",
                "l": "{sd} de {sm} – {ed} de {em} de {ey}",
                "m": "{sd} {sm} – {ed} {em} {ey}",
                "s": "{sd}/{sm} – {ed}/{em}/{ey}"
            },
            "c12": {
                "f": "{sd} de {sm} de {sy} – {ed} de {em} de {ey}",
                "l": "{sd} de {sm} de {sy} – {ed} de {em} de {ey}",
                "m": "{sd} {sm} {sy} – {ed} {em} {ey}"
            },
            "c20": {
                "f": "{sm} de {sy} – {em} de {ey}",
                "l": "{sm} de {sy} – {em} de {ey}",
                "m": "{sm} {sy} – {em} {ey}"
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
            }
        }
    }
}
ilib.data.dateformats_es_AR = {
    "gregorian": {
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es = {
    "#in {num}d": "one#dentro de {num} d|#dentro de {num} d",
    "#in {num}h": "one#dentro de {num} h|#dentro de {num} h",
    "#in {num}mi": "one#dentro de {num} min|#dentro de {num} min",
    "#in {num}mo": "one#dentro de {num} m|#dentro de {num} m",
    "#in {num}s": "one#dentro de {num} s|#dentro de {num} s",
    "#in {num}w": "one#dentro de {num} sem.|#dentro de {num} sem.",
    "#in {num}y": "one#dentro de {num} a|#dentro de {num} a",
    "#{num} ms": "#{num} ms",
    "#{num}d": "one#{num}d|#{num}d",
    "#{num}d ago": "one#hace {num} d|#hace {num} d",
    "#{num}h": "one#{num}h|#{num}h",
    "#{num}h ago": "one#hace {num} h|#hace {num} h",
    "#{num}mi ago": "one#hace {num} min|#hace {num} min",
    "#{num}mo ago": "one#hace {num} m|#hace {num} m",
    "#{num}s": "one#{num}s|#{num}s",
    "#{num}s ago": "one#hace {num} s|#hace {num} s",
    "#{num}w": "one#{num}sem|#{num}sem",
    "#{num}w ago": "one#hace {num} sem.|#hace {num} sem.",
    "#{num}y": "one#{num}a|#{num}a",
    "#{num}y ago": "one#hace {num} a|#hace {num} a",
    "1#1 day ago|#{num} days ago": "one#hace {num} día|#hace {num} días",
    "1#1 day|#{num} days": "one#{num} día|#{num} días",
    "1#1 dy ago|#{num} dys ago": "one#hace {num} día|#hace {num} días",
    "1#1 dy|#{num} dys": "one#{num}d|#{num}d",
    "1#1 hour ago|#{num} hours ago": "one#hace {num} hora|#hace {num} horas",
    "1#1 hour|#{num} hours": "one#{num} hora|#{num} horas",
    "1#1 hr ago|#{num} hrs ago": "one#hace {num} hora|#hace {num} horas",
    "1#1 hr|#{num} hrs": "#{num} h",
    "1#1 millisecond|#{num} milliseconds": "one#{num} milisegundo|#{num} milisegundos",
    "1#1 min ago|#{num} min ago": "one#hace {num} minuto|#hace {num} minutos",
    "1#1 minute ago|#{num} minutes ago": "one#hace {num} minuto|#hace {num} minutos",
    "1#1 minute|#{num} minutes": "one#{num} minuto|#{num} minutos",
    "1#1 min|#{num} min": "#{num} min",
    "1#1 mi|#{num} min": "one#{num}min|#{num}min",
    "1#1 mon ago|#{num} mons ago": "one#hace {num} mes|#hace {num} meses",
    "1#1 month ago|#{num} months ago": "one#hace {num} mes|#hace {num} meses",
    "1#1 month|#{num} months": "one#{num} mes|#{num} meses",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} m.",
    "1#1 mo|#{num} mos": "one#{num}m|#{num}m",
    "1#1 sec ago|#{num} sec ago": "one#hace {num} segundo|#hace {num} segundos",
    "1#1 second ago|#{num} seconds ago": "one#hace {num} segundo|#hace {num} segundos",
    "1#1 second|#{num} seconds": "one#{num} segundo|#{num} segundos",
    "1#1 sec|#{num} sec": "#{num} s",
    "1#1 se|#{num} sec": "one#{num}s|#{num}s",
    "1#1 week ago|#{num} weeks ago": "one#hace {num} semana|#hace {num} semanas",
    "1#1 week|#{num} weeks": "one#{num} semana|#{num} semanas",
    "1#1 wk ago|#{num} wks ago": "one#hace {num} semana|#hace {num} semanas",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sem.",
    "1#1 year ago|#{num} years ago": "one#hace {num} año|#hace {num} años",
    "1#1 year|#{num} years": "one#{num} año|#{num} años",
    "1#1 yr ago|#{num} yrs ago": "one#hace {num} año|#hace {num} años",
    "1#1 yr|#{num} yrs": "one#{num} a|#{num} a",
    "1#in 1 day|#in {num} days": "one#dentro de {num} día|#dentro de {num} días",
    "1#in 1 dy|#in {num} dys": "one#dentro de {num} día|#dentro de {num} días",
    "1#in 1 hour|#in {num} hours": "one#dentro de {num} hora|#dentro de {num} horas",
    "1#in 1 hr|#in {num} hrs": "one#dentro de {num} hora|#dentro de {num} horas",
    "1#in 1 minute|#in {num} minutes": "one#dentro de {num} minuto|#dentro de {num} minutos",
    "1#in 1 min|#in {num} min": "one#dentro de {num} minuto|#dentro de {num} minutos",
    "1#in 1 month|#in {num} months": "one#dentro de {num} mes|#dentro de {num} meses",
    "1#in 1 mon|#in {num} mons": "one#dentro de {num} mes|#dentro de {num} meses",
    "1#in 1 second|#in {num} seconds": "one#dentro de {num} segundo|#dentro de {num} segundos",
    "1#in 1 sec|#in {num} sec": "one#dentro de {num} segundo|#dentro de {num} segundos",
    "1#in 1 week|#in {num} weeks": "one#dentro de {num} semana|#dentro de {num} semanas",
    "1#in 1 wk|#in {num} wks": "one#dentro de {num} semana|#dentro de {num} semanas",
    "1#in 1 year|#in {num} years": "one#dentro de {num} año|#dentro de {num} años",
    "1#in 1 yr|#in {num} yrs": "one#dentro de {num} año|#dentro de {num} años",
    "B0": "de la madrugada",
    "B1": "a. m.",
    "B2": "de la mañana",
    "B3": "del mediodía",
    "B4": "de la tarde",
    "B5": "p. m.",
    "B6": "de la noche",
    "E0": "D",
    "E1": "L",
    "E2": "M",
    "E3": "X",
    "E4": "J",
    "E5": "V",
    "EE0": "DO",
    "EE1": "LU",
    "EE2": "MA",
    "EE3": "MI",
    "EE4": "JU",
    "EE5": "VI",
    "EE6": "SA",
    "EEE0": "dom",
    "EEE1": "lun",
    "EEE2": "mar",
    "EEE3": "mié",
    "EEE4": "jue",
    "EEE5": "vie",
    "EEE6": "sáb",
    "EEEE0": "domingo",
    "EEEE1": "lunes",
    "EEEE2": "martes",
    "EEEE3": "miércoles",
    "EEEE4": "jueves",
    "EEEE5": "viernes",
    "EEEE6": "sábado",
    "G-1": "a. e. c.",
    "G1": "e. c.",
    "MMM1": "ene",
    "MMM10": "oct",
    "MMM11": "nov",
    "MMM12": "dic",
    "MMM2": "feb",
    "MMM3": "mar",
    "MMM4": "abr",
    "MMM5": "may",
    "MMM6": "jun",
    "MMM7": "jul",
    "MMM8": "ago",
    "MMM9": "sept",
    "MMMM1": "enero",
    "MMMM10": "octubre",
    "MMMM11": "noviembre",
    "MMMM12": "diciembre",
    "MMMM2": "febrero",
    "MMMM3": "marzo",
    "MMMM4": "abril",
    "MMMM5": "mayo",
    "MMMM6": "junio",
    "MMMM7": "julio",
    "MMMM8": "agosto",
    "MMMM9": "septiembre",
    "N1": "e",
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
    "NN1": "en",
    "NN10": "oc",
    "NN11": "no",
    "NN12": "di",
    "NN2": "fe",
    "NN3": "ma",
    "NN4": "ab",
    "NN5": "ma",
    "NN6": "ju",
    "NN7": "ju",
    "NN8": "ag",
    "NN9": "se",
    "a0": "a. m.",
    "a1": "p. m.",
    "durationLongDays": "#{num} d",
    "durationMediumHours": "one#{num}h|#{num}h",
    "durationMediumMillis": "one#{num}ms|#{num}ms",
    "durationMediumWeeks": "one#{num}sem|#{num}sem",
    "durationMediumYears": "one#{num}a|#{num}a",
    "durationShortMillis": "one#{num}ms|#{num}ms",
    "durationShortMinutes": "one#{num}min|#{num}min",
    "durationShortMonths": "one#{num}m|#{num}m",
    "finalSeparatorFull": " y ",
    "finalSeparatorLong": ", ",
    "finalSeparatorMedium": ", ",
    "finalSeparatorShort": " ",
    "separatorMedium": ", "
}
ilib.data.sysres_es_AR = {
    "#in {num}d": "one#dentro de {num} días|#dentro de {num} días",
    "#in {num}s": "one#dentro de {num} seg.|#dentro de {num} seg.",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} días|#hace {num} días",
    "#{num}s": "one#{num}seg.|#{num}seg.",
    "#{num}s ago": "one#hace {num} seg.|#hace {num} seg.",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}a.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 sec|#{num} sec": "one#{num} seg.|#{num} seg.",
    "1#1 se|#{num} sec": "one#{num}seg.|#{num}seg.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} año|#{num} años",
    "B0": "madrugada",
    "B2": "mañana",
    "B3": "mediodía",
    "B4": "tarde",
    "B6": "noche",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}a.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_BO = {
    "locale": "es-BO",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_BO = {
    "clock": "12",
    "currency": "BOB",
    "locale": "BO",
    "region.name": "Bolivia",
    "timezone": "America/La_Paz"
}
ilib.data.dateformats_es_BO = {
    "gregorian": {
        "date": {
            "dmwy": {
                "m": "EE, d MMM 'de' yyyy"
            },
            "dmy": {
                "m": "d MMM 'de' yyyy"
            },
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            },
            "my": {
                "m": "MMM 'de' yyyy"
            }
        },
        "range": {
            "c00": {
                "m": "{sd} {sm} de {sy}, {st} – {et}"
            },
            "c01": {
                "m": "{sd} {sm} de {sy}, {st} – {ed} {em} de {ey}, {et}"
            },
            "c02": {
                "m": "{sd} {sm} de {sy}, {st} – {ed} {em} de {ey}, {et}"
            },
            "c03": {
                "m": "{sd} {sm} de {sy}, {st} – {ed} {em} de {ey}, {et}"
            },
            "c10": {
                "m": "{sd} – {ed} {em} de {ey}"
            },
            "c11": {
                "m": "{sd} {sm} – {ed} {em} de {ey}"
            },
            "c12": {
                "m": "{sd} {sm} de {sy} – {ed} {em} de {ey}"
            },
            "c20": {
                "m": "{sm} de {sy} – {em} de {ey}"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_BO = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_und_CA = {
    "clock": "12",
    "currency": "CAD",
    "firstDayOfWeek": 0,
    "locale": "CA",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Canada",
    "timezone": "America/Toronto"
}
ilib.data.localeinfo_es_CL = {
    "locale": "es-CL",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "{s}-{n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_CL = {
    "clock": "12",
    "currency": "CLP",
    "firstDayOfWeek": 1,
    "locale": "CL",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Chile",
    "timezone": "America/Santiago"
}
ilib.data.dateformats_es_CL = {
    "gregorian": {
        "date": {
            "d": {
                "m": "dd",
                "s": "dd"
            },
            "dm": {
                "m": "dd-MM",
                "s": "dd-MM"
            },
            "dmw": {
                "m": "EE, dd-MM",
                "s": "E, dd-MM"
            },
            "dmwy": {
                "m": "EE, dd-MM-yyyy",
                "s": "E, dd-MM-yy"
            },
            "dmy": {
                "m": "dd-MM-yyyy",
                "s": "dd-MM-yy"
            },
            "dw": {
                "m": "EE, dd",
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
                "m": "LL",
                "s": "LL"
            },
            "m": {
                "m": "MM",
                "s": "MM"
            },
            "my": {
                "m": "MM-yyyy",
                "s": "MM-yy"
            }
        },
        "range": {
            "c00": {
                "m": "{sd}-{sm}-{sy}, {st} – {et}",
                "s": "{sd}-{sm}-{sy}, {st} – {et}"
            },
            "c01": {
                "m": "{sd}-{sm}-{sy}, {st} – {ed}-{em}-{ey}, {et}",
                "s": "{sd}-{sm}-{sy}, {st} – {ed}-{em}-{ey}, {et}"
            },
            "c02": {
                "m": "{sd}-{sm}-{sy}, {st} – {ed}-{em}-{ey}, {et}",
                "s": "{sd}-{sm}-{sy}, {st} – {ed}-{em}-{ey}, {et}"
            },
            "c03": {
                "m": "{sd}-{sm}-{sy}, {st} – {ed}-{em}-{ey}, {et}",
                "s": "{sd}-{sm}-{sy}, {st} – {ed}-{em}-{ey}, {et}"
            },
            "c10": {
                "m": "{sd} – {ed}-{em}-{ey}",
                "s": "{sd} – {ed}-{em}-{ey}"
            },
            "c11": {
                "m": "{sd}-{sm} – {ed}-{em}-{ey}",
                "s": "{sd}-{sm} – {ed}-{em}-{ey}"
            },
            "c12": {
                "m": "{sd}-{sm}-{sy} – {ed}-{em}-{ey}",
                "s": "{sd}-{sm}-{sy} – {ed}-{em}-{ey}"
            },
            "c20": {
                "m": "{sm}-{sy} – {em}-{ey}",
                "s": "{sm}-{sy} – {em}-{ey}"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_CL = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "EE0": "do",
    "EE1": "lu",
    "EE2": "ma",
    "EE3": "mi",
    "EE4": "ju",
    "EE5": "vi",
    "EE6": "sá",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "L1": "E",
    "L10": "O",
    "L11": "N",
    "L12": "D",
    "L2": "F",
    "L3": "M",
    "L4": "A",
    "L5": "M",
    "L6": "J",
    "L7": "J",
    "L8": "A",
    "L9": "S",
    "LL1": "en",
    "LL10": "oc",
    "LL11": "no",
    "LL12": "di",
    "LL2": "fe",
    "LL3": "ma",
    "LL4": "ab",
    "LL5": "ma",
    "LL6": "ju",
    "LL7": "ju",
    "LL8": "ag",
    "LL9": "se",
    "LLL1": "ene.",
    "LLL10": "oct.",
    "LLL11": "nov.",
    "LLL12": "dic.",
    "LLL2": "feb.",
    "LLL3": "mar.",
    "LLL4": "abr.",
    "LLL5": "may.",
    "LLL6": "jun.",
    "LLL7": "jul.",
    "LLL8": "ago.",
    "LLL9": "sept.",
    "LLLL1": "enero",
    "LLLL10": "octubre",
    "LLLL11": "noviembre",
    "LLLL12": "diciembre",
    "LLLL2": "febrero",
    "LLLL3": "marzo",
    "LLLL4": "abril",
    "LLLL5": "mayo",
    "LLLL6": "junio",
    "LLLL7": "julio",
    "LLLL8": "agosto",
    "LLLL9": "septiembre",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_CO = {
    "locale": "es-CO",
    "numfmt": {
        "currencyFormats": {
            "common": "{s} {n}",
            "commonNegative": "-{s} {n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_CO = {
    "clock": "12",
    "currency": "COP",
    "firstDayOfWeek": 0,
    "locale": "CO",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Colombia",
    "timezone": "America/Bogota"
}
ilib.data.dateformats_es_CO = {
    "gregorian": {
        "date": {
            "dm": {
                "m": "d/MM",
                "s": "d/MM"
            },
            "dmw": {
                "m": "EE, d/MM",
                "s": "E, d/MM"
            },
            "dmwy": {
                "m": "EE, d/MM/yyyy",
                "s": "E, d/MM/yy"
            },
            "dmy": {
                "m": "d/MM/yyyy",
                "s": "d/MM/yy"
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
                "m": "LL",
                "s": "LL"
            },
            "m": {
                "m": "MM",
                "s": "MM"
            },
            "my": {
                "m": "MM/yyyy",
                "s": "MM/yy"
            }
        },
        "range": {
            "c00": {
                "m": "{sd}/{sm}/{sy}, {st} – {et}"
            },
            "c01": {
                "m": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c02": {
                "m": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c03": {
                "m": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c10": {
                "m": "{sd} – {ed}/{em}/{ey}"
            },
            "c11": {
                "m": "{sd}/{sm} – {ed}/{em}/{ey}"
            },
            "c12": {
                "m": "{sd}/{sm}/{sy} – {ed}/{em}/{ey}"
            },
            "c20": {
                "m": "{sm}/{sy} – {em}/{ey}"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
            }
        }
    }
}
ilib.data.sysres_es_CO = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num} día|#{num} días",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}h": "one#{num} h|#{num} h",
    "#{num}s": "one#{num} s|#{num} s",
    "#{num}w": "one#{num} sem.|#{num} sems.",
    "#{num}y": "one#{num} a.|#{num} a.",
    "1#1 dy|#{num} dys": "one#{num} día|#{num} días",
    "1#1 mi|#{num} min": "one#{num} min|#{num} min",
    "1#1 mon|#{num} mons": "one#{num} mes|#{num} meses",
    "1#1 mo|#{num} mos": "one#{num} mes|#{num} meses",
    "1#1 se|#{num} sec": "one#{num} s|#{num} s",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} a.",
    "B3": "m.",
    "E3": "m",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "L1": "E",
    "L10": "O",
    "L11": "N",
    "L12": "D",
    "L2": "F",
    "L3": "M",
    "L4": "A",
    "L5": "M",
    "L6": "J",
    "L7": "J",
    "L8": "A",
    "L9": "S",
    "LL1": "en",
    "LL10": "oc",
    "LL11": "no",
    "LL12": "di",
    "LL2": "fe",
    "LL3": "ma",
    "LL4": "ab",
    "LL5": "ma",
    "LL6": "ju",
    "LL7": "ju",
    "LL8": "ag",
    "LL9": "se",
    "LLL1": "ene.",
    "LLL10": "oct.",
    "LLL11": "nov.",
    "LLL12": "dic.",
    "LLL2": "feb.",
    "LLL3": "mar.",
    "LLL4": "abr.",
    "LLL5": "may.",
    "LLL6": "jun.",
    "LLL7": "jul.",
    "LLL8": "ago.",
    "LLL9": "sept.",
    "LLLL1": "enero",
    "LLLL10": "octubre",
    "LLLL11": "noviembre",
    "LLLL12": "diciembre",
    "LLLL2": "febrero",
    "LLLL3": "marzo",
    "LLLL4": "abril",
    "LLLL5": "mayo",
    "LLLL6": "junio",
    "LLLL7": "julio",
    "LLLL8": "agosto",
    "LLLL9": "septiembre",
    "c0": "d",
    "c1": "l",
    "c2": "m",
    "c3": "m",
    "c4": "j",
    "c5": "v",
    "c6": "s",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} día|#{num} días",
    "durationMediumHours": "one#{num} h|#{num} h",
    "durationMediumMillis": "one#{num} ms|#{num} ms",
    "durationMediumWeeks": "one#{num} sem.|#{num} sems.",
    "durationMediumYears": "one#{num} a.|#{num} a.",
    "durationShortMillis": "one#{num} ms|#{num} ms",
    "durationShortMinutes": "one#{num} min|#{num} min",
    "durationShortMonths": "one#{num} mes|#{num} meses"
}
ilib.data.localeinfo_es_DO = {
    "locale": "es-DO",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_DO = {
    "clock": "12",
    "currency": "DOP",
    "firstDayOfWeek": 0,
    "locale": "DO",
    "region.name": "Dominican Republic",
    "timezone": "America/Santo_Domingo"
}
ilib.data.dateformats_es_DO = {
    "gregorian": {
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_DO = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}d.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}d.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}m.",
    "1#1 sec|#{num} sec": "one#{num} seg.|#{num} seg.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}m.",
    "finalSeparatorLong": " y ",
    "finalSeparatorMedium": " y ",
    "finalSeparatorShort": " y "
}
ilib.data.localeinfo_es_EC = {
    "locale": "es-EC",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "{s}-{n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_EC = {
    "clock": "12",
    "currency": "USD",
    "firstDayOfWeek": 1,
    "locale": "EC",
    "region.name": "Ecuador",
    "timezone": "America/Guayaquil"
}
ilib.data.dateformats_es_EC = {
    "gregorian": {
        "date": {
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_EC = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_ES = {
    "clock": "24",
    "locale": "es-ES"
}
ilib.data.localeinfo_und_ES = {
    "clock": "24",
    "currency": "EUR",
    "firstDayOfWeek": 1,
    "locale": "ES",
    "region.name": "Spain",
    "timezone": "Europe/Madrid"
}
ilib.data.localeinfo_es_GT = {
    "locale": "es-GT",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_GT = {
    "clock": "12",
    "currency": "GTQ",
    "firstDayOfWeek": 0,
    "locale": "GT",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Guatemala",
    "timezone": "America/Guatemala"
}
ilib.data.dateformats_es_GT = {
    "gregorian": {
        "date": {
            "dm": {
                "m": "d/MM",
                "s": "d/MM"
            },
            "dmw": {
                "m": "EE, d/MM",
                "s": "E, d/MM"
            },
            "dmwy": {
                "m": "EE, d/MM/yyyy",
                "s": "E, d/MM/yy"
            },
            "dmy": {
                "m": "d/MM/yyyy",
                "s": "d/MM/yy"
            },
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            },
            "m": {
                "m": "MM",
                "s": "MM"
            },
            "my": {
                "m": "MM/yyyy",
                "s": "MM/yy"
            }
        },
        "range": {
            "c00": {
                "m": "{sd}/{sm}/{sy}, {st} – {et}"
            },
            "c01": {
                "m": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c02": {
                "m": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c03": {
                "m": "{sd}/{sm}/{sy}, {st} – {ed}/{em}/{ey}, {et}"
            },
            "c10": {
                "m": "{sd} – {ed}/{em}/{ey}"
            },
            "c11": {
                "m": "{sd}/{sm} – {ed}/{em}/{ey}"
            },
            "c12": {
                "m": "{sd}/{sm}/{sy} – {ed}/{em}/{ey}"
            },
            "c20": {
                "m": "{sm}/{sy} – {em}/{ey}"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_GT = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_HN = {
    "locale": "es-HN",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_HN = {
    "clock": "12",
    "currency": "HNL",
    "firstDayOfWeek": 0,
    "locale": "HN",
    "region.name": "Honduras",
    "timezone": "America/Tegucigalpa"
}
ilib.data.dateformats_es_HN = {
    "gregorian": {
        "date": {
            "d": {
                "f": "dd",
                "l": "dd"
            },
            "dm": {
                "f": "dd 'de' MMMM",
                "l": "dd 'de' MMMM"
            },
            "dmw": {
                "f": "EEEE dd 'de' MMMM",
                "l": "EEE dd 'de' MMMM",
                "m": "EE d MMM",
                "s": "E d/M"
            },
            "dmwy": {
                "f": "EEEE dd 'de' MMMM 'de' yyyy",
                "l": "EEE dd 'de' MMMM 'de' yyyy",
                "m": "EE d MMM yyyy",
                "s": "E d/M/yy"
            },
            "dmy": {
                "f": "dd 'de' MMMM 'de' yyyy",
                "l": "dd 'de' MMMM 'de' yyyy"
            },
            "dw": {
                "f": "EEEE dd",
                "l": "EEE dd",
                "m": "EE d",
                "s": "E d"
            },
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_HN = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_MX = {
    "locale": "es-MX",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_MX = {
    "clock": "12",
    "currency": "MXN",
    "firstDayOfWeek": 0,
    "locale": "MX",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Mexico",
    "timezone": "America/Mexico_City"
}
ilib.data.dateformats_es_MX = {
    "gregorian": {
        "date": {
            "d": {
                "s": "dd"
            },
            "dm": {
                "s": "dd/MM"
            },
            "dmw": {
                "s": "E, dd/MM"
            },
            "dmwy": {
                "s": "E, dd/MM/yy"
            },
            "dmy": {
                "s": "dd/MM/yy"
            },
            "dw": {
                "s": "E, dd"
            },
            "m": {
                "s": "MM"
            },
            "my": {
                "s": "MM/yy"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_MX = {
    "#in {num}d": "one#en {num} día|#en {num} días",
    "#in {num}h": "one#en {num} h|#en {num} n",
    "#in {num}mo": "one#en {num} m|#en {num} m",
    "#in {num}s": "one#en {num} s|#en {num} s",
    "#in {num}w": "one#en {num} sem.|#en {num} sem.",
    "#in {num}y": "one#en {num} a|#en {num} a",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} m",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sem",
    "1#in 1 month|#in {num} months": "one#en {num} mes|#en {num} meses",
    "1#in 1 mon|#in {num} mons": "one#en {num} mes|#en {num} meses",
    "B1": "a.m.",
    "B5": "p.m.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "MMM9": "sep",
    "a0": "a.m.",
    "a1": "p.m.",
    "durationLongDays": "one#{num} día|#{num} días"
}
ilib.data.localeinfo_es_NI = {
    "locale": "es-NI",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_NI = {
    "clock": "12",
    "currency": "NIO",
    "firstDayOfWeek": 0,
    "locale": "NI",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Nicaragua",
    "timezone": "America/Managua"
}
ilib.data.dateformats_es_NI = {
    "gregorian": {
        "date": {
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_NI = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_PA = {
    "locale": "es-PA",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_PA = {
    "clock": "12",
    "currency": "USD",
    "firstDayOfWeek": 0,
    "locale": "PA",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Panama",
    "timezone": "America/Panama"
}
ilib.data.dateformats_es_PA = {
    "gregorian": {
        "date": {
            "d": {
                "m": "dd",
                "s": "dd"
            },
            "dm": {
                "m": "MM/dd",
                "s": "MM/dd"
            },
            "dmw": {
                "m": "EE, MM/dd",
                "s": "E, MM/dd"
            },
            "dmwy": {
                "m": "EE, MM/dd/yyyy",
                "s": "E, MM/dd/yy"
            },
            "dmy": {
                "m": "MM/dd/yyyy",
                "s": "MM/dd/yy"
            },
            "dw": {
                "m": "EE, dd",
                "s": "E, dd"
            },
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            },
            "m": {
                "m": "MM",
                "s": "MM"
            },
            "my": {
                "m": "MM/yyyy",
                "s": "MM/yy"
            }
        },
        "range": {
            "c00": {
                "m": "{sm}/{sd}/{sy}, {st} – {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {et}"
            },
            "c01": {
                "m": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}"
            },
            "c02": {
                "m": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}"
            },
            "c03": {
                "m": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}"
            },
            "c10": {
                "m": "{sm}/{sd} – {ed}/{ey}",
                "s": "{sm}/{sd}/{sy} – {em}/{ed}/{ey}"
            },
            "c11": {
                "m": "{sm}/{sd} – {em}/{ed}/{ey}",
                "s": "{sm}/{sd} – {em}/{ed}/{ey}"
            },
            "c12": {
                "m": "{sm}/{sd}/{sy} – {em}/{ed}/{ey}",
                "s": "{sm}/{sd}/{sy} – {em}/{ed}/{ey}"
            },
            "c20": {
                "m": "{sm}/{sy} – {em}/{ey}"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_PA = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "B3": "mediodía",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_PE = {
    "locale": "es-PE",
    "numfmt": {
        "currencyFormats": {
            "common": "{s} {n}",
            "commonNegative": "-{s} {n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_PE = {
    "clock": "12",
    "currency": "PEN",
    "firstDayOfWeek": 0,
    "locale": "PE",
    "region.name": "Peru",
    "timezone": "America/Lima"
}
ilib.data.dateformats_es_PE = {
    "gregorian": {
        "date": {
            "dm": {
                "s": "d/MM"
            },
            "dmw": {
                "s": "E, d/MM"
            },
            "dmwy": {
                "s": "E, d/MM/yy"
            },
            "dmy": {
                "s": "d/MM/yy"
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
                "s": "MM"
            },
            "my": {
                "s": "MM/yy"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_PE = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "L1": "E",
    "L10": "O",
    "L11": "N",
    "L12": "D",
    "L2": "F",
    "L3": "M",
    "L4": "A",
    "L5": "M",
    "L6": "J",
    "L7": "J",
    "L8": "A",
    "L9": "S",
    "LL1": "En",
    "LL10": "Oc",
    "LL11": "No",
    "LL12": "Di",
    "LL2": "Fe",
    "LL3": "Ma",
    "LL4": "Ab",
    "LL5": "Ma",
    "LL6": "Ju",
    "LL7": "Ju",
    "LL8": "Ag",
    "LL9": "Se",
    "LLL1": "Ene.",
    "LLL10": "Oct.",
    "LLL11": "Nov.",
    "LLL12": "Dic.",
    "LLL2": "Feb.",
    "LLL3": "Mar.",
    "LLL4": "Abr.",
    "LLL5": "May.",
    "LLL6": "Jun.",
    "LLL7": "Jul.",
    "LLL8": "Ago.",
    "LLL9": "Set.",
    "LLLL1": "Enero",
    "LLLL10": "Octubre",
    "LLLL11": "Noviembre",
    "LLLL12": "Diciembre",
    "LLLL2": "Febrero",
    "LLLL3": "Marzo",
    "LLLL4": "Abril",
    "LLLL5": "Mayo",
    "LLLL6": "Junio",
    "LLLL7": "Julio",
    "LLLL8": "Agosto",
    "LLLL9": "Setiembre",
    "MMM1": "ene.",
    "MMM10": "oct.",
    "MMM11": "nov.",
    "MMM12": "dic.",
    "MMM2": "feb.",
    "MMM3": "mar.",
    "MMM4": "abr.",
    "MMM5": "may.",
    "MMM6": "jun.",
    "MMM7": "jul.",
    "MMM8": "ago.",
    "MMM9": "set.",
    "MMMM9": "setiembre",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_PR = {
    "locale": "es-PR",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_PR = {
    "clock": "12",
    "currency": "USD",
    "firstDayOfWeek": 0,
    "locale": "PR",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Puerto Rico",
    "timezone": "America/Puerto_Rico",
    "units": "uscustomary"
}
ilib.data.dateformats_es_PR = {
    "gregorian": {
        "date": {
            "d": {
                "m": "dd",
                "s": "dd"
            },
            "dm": {
                "m": "MM/dd",
                "s": "MM/dd"
            },
            "dmw": {
                "m": "EE, MM/dd",
                "s": "E, MM/dd"
            },
            "dmwy": {
                "m": "EE, MM/dd/yyyy",
                "s": "E, MM/dd/yy"
            },
            "dmy": {
                "m": "MM/dd/yyyy",
                "s": "MM/dd/yy"
            },
            "dw": {
                "m": "EE, dd",
                "s": "E, dd"
            },
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            },
            "m": {
                "m": "MM",
                "s": "MM"
            },
            "my": {
                "m": "MM/yyyy",
                "s": "MM/yy"
            }
        },
        "range": {
            "c00": {
                "m": "{sm}/{sd}/{sy}, {st} – {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {et}"
            },
            "c01": {
                "m": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}"
            },
            "c02": {
                "m": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}"
            },
            "c03": {
                "m": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}",
                "s": "{sm}/{sd}/{sy}, {st} – {em}/{ed}/{ey}, {et}"
            },
            "c10": {
                "m": "{sm}/{sd} – {ed}/{ey}",
                "s": "{sm}/{sd}/{sy} – {em}/{ed}/{ey}"
            },
            "c11": {
                "m": "{sm}/{sd} – {em}/{ed}/{ey}",
                "s": "{sm}/{sd} – {em}/{ed}/{ey}"
            },
            "c12": {
                "m": "{sm}/{sd}/{sy} – {em}/{ed}/{ey}",
                "s": "{sm}/{sd}/{sy} – {em}/{ed}/{ey}"
            },
            "c20": {
                "m": "{sm}/{sy} – {em}/{ey}"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_PR = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_PY = {
    "locale": "es-PY",
    "numfmt": {
        "currencyFormats": {
            "common": "{s} {n}",
            "commonNegative": "{s} -{n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_PY = {
    "clock": "12",
    "currency": "PYG",
    "firstDayOfWeek": 0,
    "locale": "PY",
    "region.name": "Paraguay",
    "timezone": "America/Asuncion"
}
ilib.data.dateformats_es_PY = {
    "gregorian": {
        "date": {
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_PY = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#in {num}s": "one#dentro de {num} seg.|#dentro de {num} seg.",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}s ago": "one#hace {num} seg.|#hace {num} seg.",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} mes|#{num} meses",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 sec|#{num} sec": "one#{num} seg.|#{num} seg.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} año|#{num} años",
    "E3": "M",
    "EE0": "do",
    "EE1": "lu",
    "EE2": "ma",
    "EE3": "mi",
    "EE4": "ju",
    "EE5": "vi",
    "EE6": "sa",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "MMM1": "ene.",
    "MMM10": "oct.",
    "MMM11": "nov.",
    "MMM12": "dic.",
    "MMM2": "feb.",
    "MMM3": "mar.",
    "MMM4": "abr.",
    "MMM5": "may.",
    "MMM6": "jun.",
    "MMM7": "jul.",
    "MMM8": "ago.",
    "MMM9": "sept.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "Do",
    "cc1": "Lu",
    "cc2": "Ma",
    "cc3": "Mi",
    "cc4": "Ju",
    "cc5": "Vi",
    "cc6": "Sa",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} día|#{num} días",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm.",
    "finalSeparatorLong": " y ",
    "finalSeparatorMedium": " y "
}
ilib.data.localeinfo_es_SV = {
    "locale": "es-SV",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_SV = {
    "clock": "12",
    "currency": "USD",
    "firstDayOfWeek": 0,
    "locale": "SV",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "El Salvador",
    "timezone": "America/El_Salvador"
}
ilib.data.dateformats_es_SV = {
    "gregorian": {
        "date": {
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_SV = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_US = {
    "delimiter": {
        "alternateQuotationEnd": "”",
        "alternateQuotationStart": "“",
        "quotationEnd": "»",
        "quotationStart": "«"
    },
    "locale": "es-US",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "-{s}{n}"
        },
        "decimalChar": ".",
        "groupChar": ",",
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_US = {
    "clock": "12",
    "currency": "USD",
    "firstDayOfWeek": 0,
    "locale": "US",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "United States",
    "timezone": "America/New_York",
    "units": "uscustomary"
}
ilib.data.dateformats_es_US = {
    "gregorian": {
        "date": {
            "dmwy": {
                "s": "E, d/M/yyyy"
            },
            "dmy": {
                "s": "d/M/yyyy"
            },
            "my": {
                "s": "M/yyyy"
            },
            "y": {
                "s": "yyyy"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_US = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "1#1 mon|#{num} mons": "one#{num} m|#{num} mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a|#{num} aa.",
    "B1": "a.m.",
    "B5": "p.m.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "a0": "a.m.",
    "a1": "p.m.",
    "durationLongDays": "one#{num} día|#{num} días",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "finalSeparatorLong": " y ",
    "finalSeparatorMedium": " y "
}
ilib.data.localeinfo_es_UY = {
    "locale": "es-UY",
    "numfmt": {
        "currencyFormats": {
            "common": "{s} {n}",
            "commonNegative": "-{s} {n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_UY = {
    "clock": "12",
    "currency": "UYU",
    "firstDayOfWeek": 1,
    "locale": "UY",
    "region.name": "Uruguay",
    "timezone": "America/Montevideo"
}
ilib.data.dateformats_es_UY = {
    "gregorian": {
        "date": {
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
                "s": "L"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_UY = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "L1": "E",
    "L10": "O",
    "L11": "N",
    "L12": "D",
    "L2": "F",
    "L3": "M",
    "L4": "A",
    "L5": "M",
    "L6": "J",
    "L7": "J",
    "L8": "A",
    "L9": "S",
    "LL1": "En",
    "LL10": "Oc",
    "LL11": "No",
    "LL12": "Di",
    "LL2": "Fe",
    "LL3": "Ma",
    "LL4": "Ab",
    "LL5": "Ma",
    "LL6": "Ju",
    "LL7": "Ju",
    "LL8": "Ag",
    "LL9": "Se",
    "LLL1": "Ene.",
    "LLL10": "Oct.",
    "LLL11": "Nov.",
    "LLL12": "Dic.",
    "LLL2": "Feb.",
    "LLL3": "Mar.",
    "LLL4": "Abr.",
    "LLL5": "May.",
    "LLL6": "Jun.",
    "LLL7": "Jul.",
    "LLL8": "Ago.",
    "LLL9": "Set.",
    "LLLL1": "Enero",
    "LLLL10": "Octubre",
    "LLLL11": "Noviembre",
    "LLLL12": "Diciembre",
    "LLLL2": "Febrero",
    "LLLL3": "Marzo",
    "LLLL4": "Abril",
    "LLLL5": "Mayo",
    "LLLL6": "Junio",
    "LLLL7": "Julio",
    "LLLL8": "Agosto",
    "LLLL9": "Setiembre",
    "MMM1": "ene.",
    "MMM10": "oct.",
    "MMM11": "nov.",
    "MMM12": "dic.",
    "MMM2": "feb.",
    "MMM3": "mar.",
    "MMM4": "abr.",
    "MMM5": "may.",
    "MMM6": "jun.",
    "MMM7": "jul.",
    "MMM8": "ago.",
    "MMM9": "set.",
    "MMMM9": "setiembre",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "DO",
    "cc1": "LU",
    "cc2": "MA",
    "cc3": "MI",
    "cc4": "JU",
    "cc5": "VI",
    "cc6": "SA",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}
ilib.data.localeinfo_es_VE = {
    "locale": "es-VE",
    "numfmt": {
        "currencyFormats": {
            "common": "{s}{n}",
            "commonNegative": "{s}-{n}"
        },
        "negativepctFmt": "-{n}%",
        "pctFmt": "{n}%"
    }
}
ilib.data.localeinfo_und_VE = {
    "clock": "12",
    "currency": "VES",
    "firstDayOfWeek": 0,
    "locale": "VE",
    "paperSizes": {
        "regular": "8x11"
    },
    "region.name": "Venezuela",
    "timezone": "America/Caracas"
}
ilib.data.dateformats_es_VE = {
    "gregorian": {
        "date": {
            "e": {
                "f": "cccc",
                "l": "ccc",
                "m": "cc",
                "s": "c"
            }
        },
        "time": {
            "12": {
                "ahm": "h:mm a",
                "ahms": "h:mm:ss a",
                "ahmsz": "h:mm:ss a z",
                "ahmz": "h:mm a z"
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
ilib.data.sysres_es_VE = {
    "#in {num}d": "one#dentro de {num} día|#dentro de {num} días",
    "#{num}d": "one#{num}d.|#{num}dd.",
    "#{num}d ago": "one#hace {num} día|#hace {num} días",
    "#{num}w": "one#{num}sem.|#{num}sems.",
    "#{num}y": "one#{num}a.|#{num}aa.",
    "1#1 dy|#{num} dys": "one#{num}d.|#{num}dd.",
    "1#1 mon|#{num} mons": "one#{num} m.|#{num} mm.",
    "1#1 mo|#{num} mos": "one#{num}m.|#{num}mm.",
    "1#1 wk|#{num} wks": "one#{num} sem.|#{num} sems.",
    "1#1 yr|#{num} yrs": "one#{num} a.|#{num} aa.",
    "E3": "M",
    "EE0": "Do",
    "EE1": "Lu",
    "EE2": "Ma",
    "EE3": "Mi",
    "EE4": "Ju",
    "EE5": "Vi",
    "EE6": "Sa",
    "G-1": "a.e.c.",
    "G1": "e.c.",
    "MMM1": "ene.",
    "MMM10": "oct.",
    "MMM11": "nov.",
    "MMM12": "dic.",
    "MMM2": "feb.",
    "MMM3": "mar.",
    "MMM4": "abr.",
    "MMM5": "may.",
    "MMM6": "jun.",
    "MMM7": "jul.",
    "MMM8": "ago.",
    "MMM9": "sept.",
    "c0": "D",
    "c1": "L",
    "c2": "M",
    "c3": "M",
    "c4": "J",
    "c5": "V",
    "c6": "S",
    "cc0": "Do",
    "cc1": "Lu",
    "cc2": "Ma",
    "cc3": "Mi",
    "cc4": "Ju",
    "cc5": "Vi",
    "cc6": "Sa",
    "ccc0": "dom",
    "ccc1": "lun",
    "ccc2": "mar",
    "ccc3": "mié",
    "ccc4": "jue",
    "ccc5": "vie",
    "ccc6": "sáb",
    "cccc0": "domingo",
    "cccc1": "lunes",
    "cccc2": "martes",
    "cccc3": "miércoles",
    "cccc4": "jueves",
    "cccc5": "viernes",
    "cccc6": "sábado",
    "durationLongDays": "one#{num} d.|#{num} dd.",
    "durationMediumWeeks": "one#{num}sem.|#{num}sems.",
    "durationMediumYears": "one#{num}a.|#{num}aa.",
    "durationShortMonths": "one#{num}m.|#{num}mm."
}