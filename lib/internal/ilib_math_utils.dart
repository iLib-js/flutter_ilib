/// Rounding utilities for NumFmt.
///
/// Mirrors JS MathUtils.js rounding modes: halfdown, halfup, halfeven,
/// halfodd, up, down, ceiling, floor.
///
/// These functions round an integer value (the number has already been
/// shifted by the decimal places). They take a double that represents
/// a shifted integer value and return the rounded integer as a double.
import 'dart:math' as math;

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
  final int factor = -(math.log(absNum) / math.ln10).floor() + digits - 1;
  return shiftDecimal(round(shiftDecimal(number, factor)), -factor);
}
