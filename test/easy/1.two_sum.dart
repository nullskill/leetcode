import 'package:leetcode/src/easy/1.two_sum/main.dart';
import 'package:test/test.dart';

void main() {
  group('two_sum', () {
    final f = Solution().twoSum;

    test('f([1, 1], 1)', () {
      expect(f([1, 1], 1), []);
    });

    test('f([0, 1, 0, 1], 0)', () {
      expect(f([0, 1, 0, 1], 0), [0, 2]);
    });

    test('f([1], 1)', () {
      expect(f([1], 1), []);
    });

    test('f([-2, -1, -3], -4)', () {
      expect(f([-2, -1, -3], -4), [1, 2]);
    });

    test('f([3, -2, -1], 2)', () {
      expect(f([3, -2, -1], 2), [0, 2]);
    });

    test('f([0, 0, 1, 1], 2)', () {
      expect(f([0, 0, 1, 1], 2), [2, 3]);
    });

    test('f([2, 7, 11, 15], 9)', () {
      expect(f([2, 7, 11, 15], 9), [0, 1]);
    });

    test('f([3, 2, 4], 6)', () {
      expect(f([3, 2, 4], 6), [1, 2]);
    });

    test('f([3, 3], 6)', () {
      expect(f([3, 3], 6), [0, 1]);
    });
  }); // group 'two_sum'
}
