// Math utilities.
//
// Includes rounding modes (halfdown, halfup, halfeven, halfodd, up, down,
// ceiling, floor) and numeric helpers.

/// @nodoc
library;

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
double roundFloor(double number) => number.floorToDouble();

/// Round using ceiling (toward positive infinity).
double roundCeiling(double number) => number.ceilToDouble();

/// Round toward zero (truncate).
double roundDown(double number) =>
    number < 0 ? number.ceilToDouble() : number.floorToDouble();

/// Round away from zero.
double roundUp(double number) =>
    number < 0 ? number.floorToDouble() : number.ceilToDouble();

/// Round half up (ties go away from zero).
double roundHalfup(double number) =>
    number < 0 ? (number - 0.5).ceilToDouble() : (number + 0.5).floorToDouble();

/// Round half down (ties go toward zero).
double roundHalfdown(double number) =>
    number < 0 ? (number + 0.5).floorToDouble() : (number - 0.5).ceilToDouble();

/// Round half even (banker's rounding — ties go to nearest even).
double roundHalfeven(double number) => (number.floorToDouble() % 2 == 0)
    ? (number - 0.5).ceilToDouble()
    : (number + 0.5).floorToDouble();

/// Round half odd (ties go to nearest odd).
double roundHalfodd(double number) => (number.floorToDouble() % 2 != 0)
    ? (number - 0.5).ceilToDouble()
    : (number + 0.5).floorToDouble();

/// Round half toward positive infinity.
/// For positive numbers: ties go up. For negative numbers: ties go toward zero.
double roundHalfPositiveInfinity(double number) =>
    (number + 0.5).floorToDouble();

/// Look up a rounding function by mode name, or null if the name is not a
/// known mode.
double Function(double)? lookupRoundingFunction(String mode) {
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
      return roundHalfdown;
    default:
      return null;
  }
}

/// Get rounding function by mode name, falling back to halfdown for an
/// unknown mode.
double Function(double) getRoundingFunction(String mode) {
  return lookupRoundingFunction(mode) ?? roundHalfdown;
}

/// Base-10 logarithm.
double log10(double number) {
  return math.log(number) / math.ln10;
}

/// Apply significant digits constraint.
double significant(double number, int digits, double Function(double) round) {
  if (digits < 1 || number == 0) {
    return number;
  }
  final double absNum = number.abs();
  final int factor = -log10(absNum).floor() + digits - 1;
  return shiftDecimal(round(shiftDecimal(number, factor)), -factor);
}
