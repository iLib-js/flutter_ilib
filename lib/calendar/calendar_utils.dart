int mod(int dividend, int modulus) {
  if (modulus == 0) {
    return 0;
  }
  final int x = dividend % modulus;
  return x < 0 ? x + modulus : x;
}

int floorDiv(int a, int b) {
  final int q = a ~/ b;
  final int r = a - q * b;
  if (r != 0 && (r ^ b) < 0) {
    return q - 1;
  }
  return q;
}
