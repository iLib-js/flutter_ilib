import 'calendar/coptic_cal.dart';
import 'calendar/ethiopic_cal.dart';
import 'calendar/gregorian_cal.dart';
import 'calendar/hebrew_cal.dart';
import 'calendar/islamic_cal.dart';
import 'calendar/julian_cal.dart';
import 'calendar/persian_algo_cal.dart';
import 'calendar/persian_cal.dart';
import 'calendar/thaisolar_cal.dart';

export 'calendar/calendar_utils.dart';
export 'calendar/coptic_cal.dart';
export 'calendar/coptic_date.dart';
export 'calendar/coptic_rata_die.dart';
export 'calendar/ethiopic_cal.dart';
export 'calendar/ethiopic_date.dart';
export 'calendar/ethiopic_rata_die.dart';
export 'calendar/greg_rata_die.dart';
export 'calendar/gregorian_cal.dart';
export 'calendar/gregorian_date.dart';
export 'calendar/hebrew_cal.dart';
export 'calendar/hebrew_date.dart';
export 'calendar/hebrew_rata_die.dart';
export 'calendar/ilib_astro.dart';
export 'calendar/ilib_date.dart';
export 'calendar/islamic_cal.dart';
export 'calendar/islamic_date.dart';
export 'calendar/islamic_rata_die.dart';
export 'calendar/julian_cal.dart';
export 'calendar/julian_date.dart';
export 'calendar/julian_day.dart';
export 'calendar/julian_rata_die.dart';
export 'calendar/persian_algo_cal.dart';
export 'calendar/persian_algo_date.dart';
export 'calendar/persian_algo_rata_die.dart';
export 'calendar/persian_cal.dart';
export 'calendar/persian_date.dart';
export 'calendar/persian_rata_die.dart';
export 'calendar/rata_die.dart';
export 'calendar/thaisolar_cal.dart';
export 'calendar/thaisolar_date.dart';
export 'calendar/thaisolar_rata_die.dart';

abstract class ILibCalendar {
  factory ILibCalendar(String type) {
    switch (type) {
      case 'gregorian':
        return GregorianCal();
      case 'thaisolar':
        return ThaiSolarCal();
      case 'julian':
        return JulianCal();
      case 'islamic':
        return IslamicCal();
      case 'persian':
        return PersianCal();
      case 'persian-algo':
        return PersianAlgoCal();
      case 'ethiopic':
        return EthiopicCal();
      case 'coptic':
        return CopticCal();
      case 'hebrew':
        return HebrewCal();
      case 'han':
        throw UnimplementedError('Han calendar is not yet supported');
      default:
        throw ArgumentError('Unknown calendar type: $type');
    }
  }

  String getType();
  int getNumMonths(int year);
  int getMonLength(int month, int year);
  bool isLeapYear(int year);

  static List<String> getCalendars() => <String>[
        'gregorian',
        'thaisolar',
        'julian',
        'islamic',
        'persian',
        'persian-algo',
        'ethiopic',
        'coptic',
        'hebrew',
      ];
}
