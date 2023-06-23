import 'package:leetcode/src/easy/1287.element_appearing_more_than_25%_in_sorted_array/main.dart';
import 'package:test/test.dart';

void main() {
  group('element_appearing_more_than_25%_in_sorted_array', () {
    final f = Solution().findSpecialInteger;

    test('returns the correct result for an input array with a single element', () {
      expect(f([1]), equals(1));
      expect(f([0]), equals(0));
      expect(f([-1]), equals(-1));
    });

    test('returns the correct result for an input array with no repeated elements', () {
      expect(f([1, 2, 3, 4, 5]), equals(-1));
      expect(f([0, 1, 2, 3, 4]), equals(-1));
      expect(f([-1, 0, 1, 2, 3]), equals(-1));
    });

    test('returns the correct result for an input array with repeated elements', () {
      expect(f([1, 2, 2, 3, 4, 4, 4, 4]), equals(4));
      expect(f([0, 0, 1, 1, 2, 2, 2, 2, 2]), equals(2));
      expect(f([-1, -1, 0, 0, 0, 0, 1, 1, 1, 1]), equals(0));
    });

    test('returns the correct result for an input array with a length of 4', () {
      expect(f([1, 2, 2, 3]), equals(2));
      expect(f([0, 0, 1, 1]), equals(0));
      expect(f([-1, -1, 0, 0]), equals(-1));
    });
  }); // group 'element_appearing_more_than_25%_in_sorted_array'
}
