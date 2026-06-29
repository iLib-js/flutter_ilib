/// Math utilities mirroring JS MathUtils.js.
///
/// Includes rounding modes (halfdown, halfup, halfeven, halfodd, up, down,
/// ceiling, floor), modular arithmetic, and numeric helpers.
import 'dart:math' as math;

/// Return the sign of the given number.
/// Returns -1 if [number] is negative, 1 otherwise (including zero).
int signum([dynamic value]) {
  var n = value;

  // If input is a string, parse to int
  if (value is String) {
    n = int.tryParse(value) ?? 0; // fallback to 0 if parse fails
  } else if (value is! num) {
    // If not a number and not a string, return 1
    return 1;
  }

  // Return -1 if negative, otherwise 1
  return (n < 0) ? -1 : 1;
}


/// Euclidean modulo. The result is always in the range [0, modulus).
/// Unlike Dart's `%` operator which gives truncated division remainder,
/// this always returns a non-negative result for positive modulus.
num mod(num dividend, num modulus) {
  if (modulus == 0) {
    return 0;
  }
  final num x = dividend % modulus;
  return x < 0 ? x + modulus : x;
}

/// Adjusted modulo. Like [mod] but returns values in the range (0, modulus].
/// When the remainder is zero, [modulus] is returned instead.
num amod(num dividend, num modulus) {
  if (modulus == 0) {
    return 0;
  }
  final num x = dividend % modulus;
  return x <= 0 ? x + modulus : x;
}

/// Base-10 logarithm.
double log10(double number) {
  return math.log(number) / math.ln10;
}

/// Shift decimal by [precision] places (positive = right, negative = left).
/// Avoids floating-point drift by using string-based "e" notation.
double shiftDecimal(double number, int precision) {
  final List<String> parts = number.toString().split('e');
  final String base = parts[0];
  final int existingExp = parts.length > 1 ? int.parse(parts[1]) : 0;
  return double.parse('${base}e${existingExp + precision}');
}

/// Round using floor (toward negative infinity).
double roundFloor(double num) => num.floorToDouble();

/// Round using ceiling (toward positive infinity).
double roundCeiling(double num) => num.ceilToDouble();

/// Round toward zero (truncate).
double roundDown(double num) => num < 0 ? num.ceilToDouble() : num.floorToDouble();

/// Round away from zero.
double roundUp(double num) => num < 0 ? num.floorToDouble() : num.ceilToDouble();

/// Round half up (ties go away from zero).
double roundHalfup(double num) =>
    num < 0 ? (num - 0.5).ceilToDouble() : (num + 0.5).floorToDouble();

/// Round half down (ties go toward zero).
double roundHalfdown(double num) =>
    num < 0 ? (num + 0.5).floorToDouble() : (num - 0.5).ceilToDouble();

/// Round half even (banker's rounding — ties go to nearest even).
double roundHalfeven(double num) =>
    (num.floorToDouble() % 2 == 0) ? (num - 0.5).ceilToDouble() : (num + 0.5).floorToDouble();

/// Round half odd (ties go to nearest odd).
double roundHalfodd(double num) =>
    (num.floorToDouble() % 2 != 0) ? (num - 0.5).ceilToDouble() : (num + 0.5).floorToDouble();

/// Round half toward positive infinity (mirrors JS Math.round behavior).
/// For positive numbers: ties go up. For negative numbers: ties go toward zero.
double roundHalfPositiveInfinity(double num) => (num + 0.5).floorToDouble();

/// Get rounding function by mode name.
double Function(double) getRoundingFunction(String mode) {
  switch (mode) {
    case 'floor':
      return roundFloor;
    case 'ceiling':
      return roundCeiling;
    case 'down':
      return roundDown;
    case 'up':
      return roundUp;
    case 'halfup':
      return roundHalfup;
    case 'halfeven':
      return roundHalfeven;
    case 'halfodd':
      return roundHalfodd;
    case 'halfdown':
    default:
      return roundHalfdown;
  }
}

/// Apply significant digits constraint.
/// Mirrors JS MathUtils.significant(number, digits, round).
double significant(double number, int digits, double Function(double) round) {
  if (digits < 1 || number == 0) {
    return number;
  }
  final double absNum = number.abs();
  final int factor = -log10(absNum).floor() + digits - 1;
  return shiftDecimal(round(shiftDecimal(number, factor)), -factor);
}
