class ILibLocale {
  /// [language] the ISO 639 2-letter code for the language,<br>
  /// or a full locale spec in BCP-47 format, or another Locale instance to copy from
  /// [region] the ISO 3166 2-letter code for the region
  /// [variant] the name of the variant of this locale, if any
  /// [script] the ISO 15924 code of the script for this locale, if any
  factory ILibLocale(
      [Object? language, String? region, String? variant, String? script]) {
    if (language is String) {
      return ILibLocale._fromString(language, region, variant, script);
    } else if (language is ILibLocale) {
      return ILibLocale._fromILibLocale(language);
    } else if (language == null) {
      return ILibLocale._internal();
    } else {
      throw ArgumentError('Invalid input type. Expected String or ILibLocale.');
    }
  }

  ILibLocale._internal(
      [this.language, this.region, this.variant, this.script]) {
    _genSpec();
  }

  factory ILibLocale._fromILibLocale(ILibLocale locale) {
    return ILibLocale._internal(
        locale.language, locale.region, locale.variant, locale.script);
  }

  factory ILibLocale._fromString(
      String language, String? region, String? variant, String? script) {
    final ILibLocale instance = ILibLocale._internal();
    if (region == null && script == null && variant == null) {
      instance.spec = language;
      final List<String>? parts = instance.spec
          ?.split(RegExp(r'[-_]'))
          .where((String part) => part.isNotEmpty)
          .toList();

      for (int i = 0; i < parts!.length; i++) {
        if (_isLanguageCode(parts[i])) {
          instance.language = parts[i];
        } else if (_isRegionCode(parts[i])) {
          instance.region = parts[i];
        } else if (_isScriptCode(parts[i])) {
          instance.script = parts[i];
        } else {
          instance.variant = parts[i];
        }
      }
    } else {
      if (language != null && language != '') {
        language = language.trim();
        if (language.isNotEmpty) {
          instance.language = language.toLowerCase();
        } else {
          instance.language = null;
        }
      }
      if (region != null && region != '') {
        region = region.trim();
        if (region.isNotEmpty) {
          instance.region = region.toUpperCase();
        } else {
          instance.region = null;
        }
      }
      if (variant != null && variant != '') {
        variant = variant.trim();
        if (variant.isNotEmpty) {
          instance.variant = variant;
        } else {
          instance.variant = null;
        }
      }
      if (script != null && script != '') {
        script = script.trim();
        if (script.isNotEmpty) {
          instance.script =
              script[0].toUpperCase() + script.substring(1).toLowerCase();
        } else {
          instance.script = null;
        }
      } else {
        instance.script = null;
      }
    }
    instance._genSpec();
    return instance;
  }
  String? language;
  String? region;
  String? script;
  String? variant;
  String? spec;

  // Map of ISO 3166-1 alpha-2 to alpha-3 region codes
  // from http://en.wikipedia.org/wiki/ISO_3166-1
  static const Map<String, String> a2toa3regmap = <String, String>{
    'AF': 'AFG',
    'AX': 'ALA',
    'AL': 'ALB',
    'DZ': 'DZA',
    'AS': 'ASM',
    'AD': 'AND',
    'AO': 'AGO',
    'AI': 'AIA',
    'AQ': 'ATA',
    'AG': 'ATG',
    'AR': 'ARG',
    'AM': 'ARM',
    'AW': 'ABW',
    'AU': 'AUS',
    'AT': 'AUT',
    'AZ': 'AZE',
    'BS': 'BHS',
    'BH': 'BHR',
    'BD': 'BGD',
    'BB': 'BRB',
    'BY': 'BLR',
    'BE': 'BEL',
    'BZ': 'BLZ',
    'BJ': 'BEN',
    'BM': 'BMU',
    'BT': 'BTN',
    'BO': 'BOL',
    'BQ': 'BES',
    'BA': 'BIH',
    'BW': 'BWA',
    'BV': 'BVT',
    'BR': 'BRA',
    'IO': 'IOT',
    'BN': 'BRN',
    'BG': 'BGR',
    'BF': 'BFA',
    'BI': 'BDI',
    'KH': 'KHM',
    'CM': 'CMR',
    'CA': 'CAN',
    'CV': 'CPV',
    'KY': 'CYM',
    'CF': 'CAF',
    'TD': 'TCD',
    'CL': 'CHL',
    'CN': 'CHN',
    'CX': 'CXR',
    'CC': 'CCK',
    'CO': 'COL',
    'KM': 'COM',
    'CG': 'COG',
    'CD': 'COD',
    'CK': 'COK',
    'CR': 'CRI',
    'CI': 'CIV',
    'HR': 'HRV',
    'CU': 'CUB',
    'CW': 'CUW',
    'CY': 'CYP',
    'CZ': 'CZE',
    'DK': 'DNK',
    'DJ': 'DJI',
    'DM': 'DMA',
    'DO': 'DOM',
    'EC': 'ECU',
    'EG': 'EGY',
    'SV': 'SLV',
    'GQ': 'GNQ',
    'ER': 'ERI',
    'EE': 'EST',
    'ET': 'ETH',
    'FK': 'FLK',
    'FO': 'FRO',
    'FJ': 'FJI',
    'FI': 'FIN',
    'FR': 'FRA',
    'GF': 'GUF',
    'PF': 'PYF',
    'TF': 'ATF',
    'GA': 'GAB',
    'GM': 'GMB',
    'GE': 'GEO',
    'DE': 'DEU',
    'GH': 'GHA',
    'GI': 'GIB',
    'GR': 'GRC',
    'GL': 'GRL',
    'GD': 'GRD',
    'GP': 'GLP',
    'GU': 'GUM',
    'GT': 'GTM',
    'GG': 'GGY',
    'GN': 'GIN',
    'GW': 'GNB',
    'GY': 'GUY',
    'HT': 'HTI',
    'HM': 'HMD',
    'VA': 'VAT',
    'HN': 'HND',
    'HK': 'HKG',
    'HU': 'HUN',
    'IS': 'ISL',
    'IN': 'IND',
    'ID': 'IDN',
    'IR': 'IRN',
    'IQ': 'IRQ',
    'IE': 'IRL',
    'IM': 'IMN',
    'IL': 'ISR',
    'IT': 'ITA',
    'JM': 'JAM',
    'JP': 'JPN',
    'JE': 'JEY',
    'JO': 'JOR',
    'KZ': 'KAZ',
    'KE': 'KEN',
    'KI': 'KIR',
    'KP': 'PRK',
    'KR': 'KOR',
    'KW': 'KWT',
    'KG': 'KGZ',
    'LA': 'LAO',
    'LV': 'LVA',
    'LB': 'LBN',
    'LS': 'LSO',
    'LR': 'LBR',
    'LY': 'LBY',
    'LI': 'LIE',
    'LT': 'LTU',
    'LU': 'LUX',
    'MO': 'MAC',
    'MK': 'MKD',
    'MG': 'MDG',
    'MW': 'MWI',
    'MY': 'MYS',
    'MV': 'MDV',
    'ML': 'MLI',
    'MT': 'MLT',
    'MH': 'MHL',
    'MQ': 'MTQ',
    'MR': 'MRT',
    'MU': 'MUS',
    'YT': 'MYT',
    'MX': 'MEX',
    'FM': 'FSM',
    'MD': 'MDA',
    'MC': 'MCO',
    'MN': 'MNG',
    'ME': 'MNE',
    'MS': 'MSR',
    'MA': 'MAR',
    'MZ': 'MOZ',
    'MM': 'MMR',
    'NA': 'NAM',
    'NR': 'NRU',
    'NP': 'NPL',
    'NL': 'NLD',
    'NC': 'NCL',
    'NZ': 'NZL',
    'NI': 'NIC',
    'NE': 'NER',
    'NG': 'NGA',
    'NU': 'NIU',
    'NF': 'NFK',
    'MP': 'MNP',
    'NO': 'NOR',
    'OM': 'OMN',
    'PK': 'PAK',
    'PW': 'PLW',
    'PS': 'PSE',
    'PA': 'PAN',
    'PG': 'PNG',
    'PY': 'PRY',
    'PE': 'PER',
    'PH': 'PHL',
    'PN': 'PCN',
    'PL': 'POL',
    'PT': 'PRT',
    'PR': 'PRI',
    'QA': 'QAT',
    'RE': 'REU',
    'RO': 'ROU',
    'RU': 'RUS',
    'RW': 'RWA',
    'BL': 'BLM',
    'SH': 'SHN',
    'KN': 'KNA',
    'LC': 'LCA',
    'MF': 'MAF',
    'PM': 'SPM',
    'VC': 'VCT',
    'WS': 'WSM',
    'SM': 'SMR',
    'ST': 'STP',
    'SA': 'SAU',
    'SN': 'SEN',
    'RS': 'SRB',
    'SC': 'SYC',
    'SL': 'SLE',
    'SG': 'SGP',
    'SX': 'SXM',
    'SK': 'SVK',
    'SI': 'SVN',
    'SB': 'SLB',
    'SO': 'SOM',
    'ZA': 'ZAF',
    'GS': 'SGS',
    'SS': 'SSD',
    'ES': 'ESP',
    'LK': 'LKA',
    'SD': 'SDN',
    'SR': 'SUR',
    'SJ': 'SJM',
    'SZ': 'SWZ',
    'SE': 'SWE',
    'CH': 'CHE',
    'SY': 'SYR',
    'TW': 'TWN',
    'TJ': 'TJK',
    'TZ': 'TZA',
    'TH': 'THA',
    'TL': 'TLS',
    'TG': 'TGO',
    'TK': 'TKL',
    'TO': 'TON',
    'TT': 'TTO',
    'TN': 'TUN',
    'TR': 'TUR',
    'TM': 'TKM',
    'TC': 'TCA',
    'TV': 'TUV',
    'UG': 'UGA',
    'UA': 'UKR',
    'AE': 'ARE',
    'GB': 'GBR',
    'US': 'USA',
    'UM': 'UMI',
    'UY': 'URY',
    'UZ': 'UZB',
    'VU': 'VUT',
    'VE': 'VEN',
    'VN': 'VNM',
    'VG': 'VGB',
    'VI': 'VIR',
    'WF': 'WLF',
    'EH': 'ESH',
    'YE': 'YEM',
    'ZM': 'ZMB',
    'ZW': 'ZWE'
  };

  // Map of ISO 639-1 to ISO 639-3 language codes
  static const Map<String, String> a1toa3langmap = <String, String>{
    'ab': 'abk',
    'aa': 'aar',
    'af': 'afr',
    'ak': 'aka',
    'sq': 'sqi',
    'am': 'amh',
    'ar': 'ara',
    'an': 'arg',
    'hy': 'hye',
    'as': 'asm',
    'av': 'ava',
    'ae': 'ave',
    'ay': 'aym',
    'az': 'aze',
    'bm': 'bam',
    'ba': 'bak',
    'eu': 'eus',
    'be': 'bel',
    'bn': 'ben',
    'bh': 'bih',
    'bi': 'bis',
    'bs': 'bos',
    'br': 'bre',
    'bg': 'bul',
    'my': 'mya',
    'ca': 'cat',
    'ch': 'cha',
    'ce': 'che',
    'ny': 'nya',
    'zh': 'zho',
    'cv': 'chv',
    'kw': 'cor',
    'co': 'cos',
    'cr': 'cre',
    'hr': 'hrv',
    'cs': 'ces',
    'da': 'dan',
    'dv': 'div',
    'nl': 'nld',
    'dz': 'dzo',
    'en': 'eng',
    'eo': 'epo',
    'et': 'est',
    'ee': 'ewe',
    'fo': 'fao',
    'fj': 'fij',
    'fi': 'fin',
    'fr': 'fra',
    'ff': 'ful',
    'gl': 'glg',
    'ka': 'kat',
    'de': 'deu',
    'el': 'ell',
    'gn': 'grn',
    'gu': 'guj',
    'ht': 'hat',
    'ha': 'hau',
    'he': 'heb',
    'hz': 'her',
    'hi': 'hin',
    'ho': 'hmo',
    'hu': 'hun',
    'ia': 'ina',
    'id': 'ind',
    'ie': 'ile',
    'ga': 'gle',
    'ig': 'ibo',
    'ik': 'ipk',
    'io': 'ido',
    'is': 'isl',
    'it': 'ita',
    'iu': 'iku',
    'ja': 'jpn',
    'jv': 'jav',
    'kl': 'kal',
    'kn': 'kan',
    'kr': 'kau',
    'ks': 'kas',
    'kk': 'kaz',
    'km': 'khm',
    'ki': 'kik',
    'rw': 'kin',
    'ky': 'kir',
    'kv': 'kom',
    'kg': 'kon',
    'ko': 'kor',
    'ku': 'kur',
    'kj': 'kua',
    'la': 'lat',
    'lb': 'ltz',
    'lg': 'lug',
    'li': 'lim',
    'ln': 'lin',
    'lo': 'lao',
    'lt': 'lit',
    'lu': 'lub',
    'lv': 'lav',
    'gv': 'glv',
    'mk': 'mkd',
    'mg': 'mlg',
    'ms': 'msa',
    'ml': 'mal',
    'mt': 'mlt',
    'mi': 'mri',
    'mr': 'mar',
    'mh': 'mah',
    'mn': 'mon',
    'na': 'nau',
    'nv': 'nav',
    'nb': 'nob',
    'nd': 'nde',
    'ne': 'nep',
    'ng': 'ndo',
    'nn': 'nno',
    'no': 'nor',
    'ii': 'iii',
    'nr': 'nbl',
    'oc': 'oci',
    'oj': 'oji',
    'cu': 'chu',
    'om': 'orm',
    'or': 'ori',
    'os': 'oss',
    'pa': 'pan',
    'pi': 'pli',
    'fa': 'fas',
    'pl': 'pol',
    'ps': 'pus',
    'pt': 'por',
    'qu': 'que',
    'rm': 'roh',
    'rn': 'run',
    'ro': 'ron',
    'ru': 'rus',
    'sa': 'san',
    'sc': 'srd',
    'sd': 'snd',
    'se': 'sme',
    'sm': 'smo',
    'sg': 'sag',
    'sr': 'srp',
    'gd': 'gla',
    'sn': 'sna',
    'si': 'sin',
    'sk': 'slk',
    'sl': 'slv',
    'so': 'som',
    'st': 'sot',
    'es': 'spa',
    'su': 'sun',
    'sw': 'swa',
    'ss': 'ssw',
    'sv': 'swe',
    'ta': 'tam',
    'te': 'tel',
    'tg': 'tgk',
    'th': 'tha',
    'ti': 'tir',
    'bo': 'bod',
    'tk': 'tuk',
    'tl': 'tgl',
    'tn': 'tsn',
    'to': 'ton',
    'tr': 'tur',
    'ts': 'tso',
    'tt': 'tat',
    'tw': 'twi',
    'ty': 'tah',
    'ug': 'uig',
    'uk': 'ukr',
    'ur': 'urd',
    'uz': 'uzb',
    've': 'ven',
    'vi': 'vie',
    'vo': 'vol',
    'wa': 'wln',
    'cy': 'cym',
    'wo': 'wol',
    'fy': 'fry',
    'xh': 'xho',
    'yi': 'yid',
    'yo': 'yor',
    'za': 'zha',
    'zu': 'zul'
  };

  // List of ISO 15924 script codes
  // the list below is originally from https://unicode.org/iso15924/iso15924-codes.html
  static const List<String> iso15924 = <String>[
    'Adlm',
    'Afak',
    'Aghb',
    'Ahom',
    'Arab',
    'Aran',
    'Armi',
    'Armn',
    'Avst',
    'Bali',
    'Bamu',
    'Bass',
    'Batk',
    'Beng',
    'Bhks',
    'Blis',
    'Bopo',
    'Brah',
    'Brai',
    'Bugi',
    'Buhd',
    'Cakm',
    'Cans',
    'Cari',
    'Cham',
    'Cher',
    'Chrs',
    'Cirt',
    'Copt',
    'Cpmn',
    'Cprt',
    'Cyrl',
    'Cyrs',
    'Deva',
    'Diak',
    'Dogr',
    'Dsrt',
    'Dupl',
    'Egyd',
    'Egyh',
    'Egyp',
    'Elba',
    'Elym',
    'Ethi',
    'Geok',
    'Geor',
    'Glag',
    'Gong',
    'Gonm',
    'Goth',
    'Gran',
    'Grek',
    'Gujr',
    'Guru',
    'Hanb',
    'Hang',
    'Hani',
    'Hano',
    'Hans',
    'Hant',
    'Hatr',
    'Hebr',
    'Hira',
    'Hluw',
    'Hmng',
    'Hmnp',
    'Hrkt',
    'Hung',
    'Inds',
    'Ital',
    'Jamo',
    'Java',
    'Jpan',
    'Jurc',
    'Kali',
    'Kana',
    'Khar',
    'Khmr',
    'Khoj',
    'Kitl',
    'Kits',
    'Knda',
    'Kore',
    'Kpel',
    'Kthi',
    'Lana',
    'Laoo',
    'Latf',
    'Latg',
    'Latn',
    'Leke',
    'Lepc',
    'Limb',
    'Lina',
    'Linb',
    'Lisu',
    'Loma',
    'Lyci',
    'Lydi',
    'Mahj',
    'Maka',
    'Mand',
    'Mani',
    'Marc',
    'Maya',
    'Medf',
    'Mend',
    'Merc',
    'Mero',
    'Mlym',
    'Modi',
    'Mong',
    'Moon',
    'Mroo',
    'Mtei',
    'Mult',
    'Mymr',
    'Nand',
    'Narb',
    'Nbat',
    'Newa',
    'Nkdb',
    'Nkgb',
    'Nkoo',
    'Nshu',
    'Ogam',
    'Olck',
    'Orkh',
    'Orya',
    'Osge',
    'Osma',
    'Palm',
    'Pauc',
    'Perm',
    'Phag',
    'Phli',
    'Phlp',
    'Phlv',
    'Phnx',
    'Plrd',
    'Piqd',
    'Prti',
    'Qaaa',
    'Qabx',
    'Rjng',
    'Rohg',
    'Roro',
    'Runr',
    'Samr',
    'Sara',
    'Sarb',
    'Saur',
    'Sgnw',
    'Shaw',
    'Shrd',
    'Shui',
    'Sidd',
    'Sind',
    'Sinh',
    'Sogd',
    'Sogo',
    'Sora',
    'Soyo',
    'Sund',
    'Sylo',
    'Syrc',
    'Syre',
    'Syrj',
    'Syrn',
    'Tagb',
    'Takr',
    'Tale',
    'Talu',
    'Taml',
    'Tang',
    'Tavt',
    'Telu',
    'Teng',
    'Tfng',
    'Tglg',
    'Thaa',
    'Thai',
    'Tibt',
    'Tirh',
    'Toto',
    'Ugar',
    'Vaii',
    'Visp',
    'Wara',
    'Wcho',
    'Wole',
    'Xpeo',
    'Xsux',
    'Yezi',
    'Yiii',
    'Zanb',
    'Zinh',
    'Zmth',
    'Zsye',
    'Zsym',
    'Zxxx',
    'Zyyy',
    'Zzzz',
  ];

  static const int _asciiLowerA = 97; // 'a'
  static const int _asciiLowerZ = 122; // 'z'
  static const int _asciiUpperA = 65; // 'A'
  static const int _asciiUpperZ = 90; // 'Z'
  static const int _asciiDigit0 = 48; // '0'
  static const int _asciiDigit9 = 57; // '9'

  // Tell whether or not the str does not start with a lower case ASCII char.
  static bool _notLower(String str) {
    if (str.isEmpty) {
      return true;
    }
    final int ch = str.codeUnitAt(0);
    return ch < _asciiLowerA || ch > _asciiLowerZ;
  }

  // Tell whether or not the str does not start with an upper case ASCII char.
  static bool _notUpper(String str) {
    if (str.isEmpty) {
      return true;
    }
    final int ch = str.codeUnitAt(0);
    return ch < _asciiUpperA || ch > _asciiUpperZ;
  }

  // Tell whether or not the str does not start with a digit char.
  static bool _notDigit(String str) {
    if (str.isEmpty) {
      return true;
    }
    final int ch = str.codeUnitAt(0);
    return ch < _asciiDigit0 || ch > _asciiDigit9;
  }

  // Tell whether or not the given string has the correct syntax to be
  // an ISO 639 language code.
  static bool _isLanguageCode(String? str) {
    if (str == null || str.length < 2 || str.length > 3) {
      return false;
    }

    for (int i = 0; i < str.length; i++) {
      if (_notLower(str[i])) {
        return false;
      }
    }

    return true;
  }

  // Tell whether or not the given string has the correct syntax to be
  // an ISO 3166 2-letter region code or M.49 3-digit region code.
  static bool _isRegionCode(String? str) {
    if (str == null || str.length < 2 || str.length > 3) {
      return false;
    }

    if (str.length == 2) {
      for (int i = 0; i < str.length; i++) {
        if (_notUpper(str[i])) {
          return false;
        }
      }
    } else {
      for (int i = 0; i < str.length; i++) {
        if (_notDigit(str[i])) {
          return false;
        }
      }
    }

    return true;
  }

  // Tell whether or not the given string has the correct syntax to be
  // an ISO 15924 script code.
  static bool _isScriptCode(String? str) {
    if (str == null || str.length != 4 || _notUpper(str[0])) {
      return false;
    }

    for (int i = 1; i < 4; i++) {
      if (_notLower(str[i])) {
        return false;
      }
    }

    return true;
  }

  /// Return the ISO-3166 alpha3 equivalent region code
  /// for the given ISO 3166 alpha2 region code.<br>
  /// If the given alpha2 code is not found, this function returns its argument unchanged.
  static String? regionAlpha2ToAlpha3(String? alpha2) {
    return a2toa3regmap[alpha2] ?? alpha2;
  }

  /// Return the ISO-639 alpha3 equivalent language code
  /// for the given ISO 639 alpha1 language code.<br>
  /// If the given alpha1 code is not found, this function returns its argument unchanged.
  static String? languageAlpha1ToAlpha3(String? alpha1) {
    return a1toa3langmap[alpha1] ?? alpha1;
  }

  void _genSpec() {
    final List<String> parts = <String>[];
    if (language?.isNotEmpty ?? false) {
      parts.add(language!);
    }
    if (script?.isNotEmpty ?? false) {
      parts.add(script!);
    }
    if (region?.isNotEmpty ?? false) {
      parts.add(region!);
    }
    if (variant?.isNotEmpty ?? false) {
      parts.add(variant!);
    }
    spec = parts.join('-');
  }

  /// Return the ISO 639 language code for this locale.
  String? getLanguage() {
    return language;
  }

  /// Return the language of this locale as an ISO-639-alpha3 language code.
  String? getLanguageAlpha3() {
    return language != null ? languageAlpha1ToAlpha3(language) : null;
  }

  /// Return the ISO 3166 region code for this locale.
  String? getRegion() {
    return region;
  }

  /// Return the region of this locale as an ISO-3166-alpha3 region code.
  String? getRegionAlpha3() {
    return region != null ? regionAlpha2ToAlpha3(region) : null;
  }

  /// Return the ISO 15924 script code for this locale.
  String? getScript() {
    return script;
  }

  /// Return the variant code for this locale.
  String? getVariant() {
    return variant;
  }

  /// Return the whole locale specifier as a string.
  String getSpec() {
    if (spec == null || spec!.isEmpty) {
      _genSpec();
    }
    return spec!;
  }

  /// Return the language locale specifier.
  String getLangSpec() {
    String spec = language ?? '';
    if (spec.isNotEmpty && script != null && script!.isNotEmpty) {
      spec += '-${script!}';
    }
    return spec;
  }

  @override
  String toString() {
    return getSpec();
  }

  /// Return true if the other locale is exactly equal to the current one.
  bool equals(ILibLocale other) {
    return language == other.language &&
        region == other.region &&
        script == other.script &&
        variant == other.variant;
  }

  /// A list of all known pseudo-locales.
  static List<String> pseudoLocales = [
    'zxx-XX',
    'zxx-Cyrl-XX',
    'zxx-Hans-XX',
    'zxx-Hebr-XX'
  ];

  /// Return true if the current locale is the special pseudo locale.
  bool isPseudo() {
    return pseudoLocales.contains(spec);
  }

  /// Return true if the current locale uses a valid ISO codes <br>
  /// for each component of the locale that exists.
  bool isValid() {
    if (language == null && script == null && region == null) {
      return false;
    }

    return (language == null ||
            (_isLanguageCode(language) &&
                a1toa3langmap.containsKey(language))) &&
        (script == null ||
            (_isScriptCode(script) && iso15924.contains(script))) &&
        (region == null ||
            (_isRegionCode(region) && a2toa3regmap.containsKey(region)));
  }

  static List<String> getAvailableLocales() {
    throw UnimplementedError('getAvailableLocales is not implemented yet');
  }
}
