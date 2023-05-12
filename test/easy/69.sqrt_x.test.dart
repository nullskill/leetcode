import 'package:leetcode/src/easy/69.sqrt_x/main.dart';
import 'package:test/test.dart';

void main() {
  group('sqrt_x', () {
    final f = Solution().mySqrt;

    test('f(0)', () {
      expect(f(0), equals(0));
    });

    test('f(1)', () {
      expect(f(1), equals(1));
    });

    test('f(4)', () {
      expect(f(4), equals(2));
    });

    test('f(8)', () {
      expect(f(8), equals(2));
    });

    test('f(100)', () {
      expect(f(100), equals(10));
    });

    test('f(1000)', () {
      expect(f(1000), equals(31));
    });
  }); // group 'sqrt_x'
}
