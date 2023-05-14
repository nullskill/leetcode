import 'package:leetcode/src/easy/70.climbing_stairs/main.dart';
import 'package:test/test.dart';

void main() {
  group('climbing_stairs', () {
    final f = Solution().climbStairs;

    test('f(1)', () {
      expect(f(1), equals(1));
    });

    test('f(2)', () {
      expect(f(2), equals(2));
    });

    test('f(3)', () {
      expect(f(3), equals(3));
    });

    test('f(4)', () {
      expect(f(4), equals(5));
    });

    test('f(5)', () {
      expect(f(5), equals(8));
    });

    test('f(45)', () {
      expect(f(45), equals(1836311903));
    });
  }); // group 'climbing_stairs'
}
