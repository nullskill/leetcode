import 'package:leetcode/src/easy/88.merge_sorted_array/main.dart';
import 'package:test/test.dart';

void main() {
  group('merge_sorted_array', () {
    final f = Solution().merge;

    test('f([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3)', () {
      final nums = <int>[1, 2, 3, 0, 0, 0];
      f(nums, 3, [2, 5, 6], 3);

      expect(nums, equals([1, 2, 2, 3, 5, 6]));
    });

    test('f([1], 1, [], 0)', () {
      final nums = <int>[1];
      f(nums, 1, [], 0);

      expect(nums, equals([1]));
    });

    test('f([0], 0, [1], 1)', () {
      final nums = <int>[0];
      f(nums, 0, [1], 1);

      expect(nums, equals([1]));
    });

    test('f([-1], 1, [0], 0)', () {
      final nums = <int>[-1];
      f(nums, 1, [0], 0);

      expect(nums, equals([-1]));
    });

    test('f([-10, -5, -5, -3, 0, 0, 0], 4, [-1, 0 , 1], 3)', () {
      final nums = <int>[-10, -5, -5, -3, 0, 0, 0];
      f(nums, 4, [-1, 0, 1], 3);

      expect(nums, equals([-10, -5, -5, -3, -1, 0, 1]));
    });
  }); // group 'merge_sorted_array'
}
