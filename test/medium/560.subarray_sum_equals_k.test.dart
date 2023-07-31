import 'package:leetcode/src/medium/560.subarray_sum_equals_k/main.dart';
import 'package:test/test.dart';

void main() {
  group('subarray_sum_equals_k', () {
    final f = Solution().subarraySum;

    test('f([1, 2, 3, 6, 4, 6], 6)', () {
      expect(f([1, 2, 3, 6, 4, 6], 6), equals(3));
    });

    test('f([-1, -1, 1], 0)', () {
      expect(f([-1, -1, 1], 0), equals(1));
    });

    test('f([1, 2, 5, 3, 4], 6)', () {
      expect(f([1, 2, 5, 3, 4], 6), equals(0));
    });

    test('f([1, 1, 1], 2)', () {
      expect(f([1, 1, 1], 2), equals(2));
    });

    test('f([1], 1)', () {
      expect(f([1], 1), equals(1));
    });

    test('f([-1, 2, -1, -2, -3], -3)', () {
      expect(f([-1, 2, -1, -2, -3], -3), equals(2));
    });
  }); // group 'subarray_sum_equals_k'
}
