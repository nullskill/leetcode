import 'package:leetcode/src/easy/26.remove_duplicates_from_sorted_array/main.dart';
import 'package:test/test.dart';

void main() {
  group('remove_duplicates_from_sorted_array', () {
    final f = Solution().removeDuplicates;

    test('f([])', () {
      final nums = <int>[];
      const expectedLength = 0;

      expect(f(nums), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[]));
    });

    test('f([-100])', () {
      final nums = <int>[-100];
      const expectedLength = 1;

      expect(f(nums), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[-100]));
    });

    test('f([-10, -5, -5, -5, -3, -3, 0])', () {
      final nums = <int>[-10, -5, -5, -5, -3, -3, 0];
      const expectedLength = 4;

      expect(f(nums), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[-10, -5, -3, 0]));
    });

    test('f([1, 1, 2])', () {
      final nums = <int>[1, 1, 2];
      const expectedLength = 2;

      expect(f(nums), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[1, 2]));
    });

    test('f([0, 0, 1, 1, 1, 2, 2, 3, 3, 4])', () {
      final nums = <int>[0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
      const expectedLength = 5;

      expect(f(nums), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[0, 1, 2, 3, 4]));
    });

    test('f([5, 5, 5, 5, 5])', () {
      final nums = <int>[5, 5, 5, 5, 5];
      const expectedLength = 1;

      expect(f(nums), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[5]));
    });
  }); // group 'remove_duplicates_from_sorted_array'
}
