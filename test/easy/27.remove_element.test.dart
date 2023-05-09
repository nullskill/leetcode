import 'package:leetcode/src/easy/27.remove_element/main.dart';
import 'package:test/test.dart';

void main() {
  group('remove_element', () {
    final f = Solution().removeElement;

    test('f([1, 1, 1], 0)', () {
      final nums = <int>[1, 1, 1];
      const val = 0;
      const expectedLength = 3;

      expect(f(nums, val), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[1, 1, 1]));
    });

    test('f([0, 0, 0], 0)', () {
      final nums = <int>[0, 0, 0];
      const val = 0;
      const expectedLength = 0;

      expect(f(nums, val), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[]));
    });

    test('f([3, 2, 2, 3], 3)', () {
      final nums = <int>[3, 2, 2, 3];
      const val = 3;
      const expectedLength = 2;

      expect(f(nums, val), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));
      expect(nums.sublist(0, expectedLength), equals(<int>[2, 2]));
    });

    test('f([0, 1, 2, 2, 3, 0, 4, 2], 2)', () {
      final nums = <int>[0, 1, 2, 2, 3, 0, 4, 2];
      const val = 2;
      const expectedLength = 5;
      var expectedNums = <int>[0, 1, 4, 0, 3];

      expect(f(nums, val), expectedLength);
      expect(nums.length, greaterThanOrEqualTo(expectedLength));

      nums.sort();
      expectedNums.sort();

      expect(nums.sublist(0, expectedLength), equals(expectedNums));
    });
  }); // group 'remove_element'
}
