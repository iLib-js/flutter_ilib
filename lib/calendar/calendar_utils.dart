/// @nodoc
library;

/// Mathematically correct modulo that always returns a non-negative result,
/// unlike Dart's `%` operator which mirrors the sign of the dividend.
int mod(int dividend, int modulus) {
  if (modulus == 0) {
    return 0;
  }
  final int x = dividend % modulus;
  return x < 0 ? x + modulus : x;
}

/// Integer division that rounds toward negative infinity (floor division),
/// unlike Dart's `~/` which truncates toward zero.
int floorDiv(int a, int b) {
  final int q = a ~/ b;
  final int r = a - q * b;
  if (r != 0 && (r ^ b) < 0) {
    return q - 1;
  }
  return q;
}
