import 'package:leetcode/src/medium/912.sort_an_array/main.dart';
import 'package:test/test.dart';

void main() {
  group('sort_an_array', () {
    final f = Solution().sortArray;

    test('returns an empty list when given an empty list', () {
      expect(f([]), equals([]));
    });

    test('returns the same list when given a list with one element', () {
      expect(f([1]), equals([1]));
    });

    test('sorts a list of integers with duplicates', () {
      expect(f([5, 1, 1, 2, 0, 0]), equals([0, 0, 1, 1, 2, 5]));
      expect(f([3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]), equals([1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]));
    });

    test('sorts a list of integers in descending order', () {
      expect(f([5, 4, 3, 2, 1, 0]), equals([0, 1, 2, 3, 4, 5]));
      expect(f([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]), equals([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]));
      expect(f([100, 90, 80, 70, 60, 50, 40, 30, 20, 10]), equals([10, 20, 30, 40, 50, 60, 70, 80, 90, 100]));
    });

    test('sorts a list of negative integers', () {
      expect(f([-5, -1, -3, -2, -4]), equals([-5, -4, -3, -2, -1]));
      expect(f([-9, -8, -7, -6, -5, -4, -3, -2, -1, 0]), equals([-9, -8, -7, -6, -5, -4, -3, -2, -1, 0]));
      expect(f([-100, -90, -80, -70, -60, -50, -40, -30, -20, -10]),
          equals([-100, -90, -80, -70, -60, -50, -40, -30, -20, -10]));
    });

    test('sorts a list of negative and positive integers', () {
      expect(f([-5, 1, -3, 2, -4]), equals([-5, -4, -3, 1, 2]));
      expect(f([-9, 8, -7, 6, -5, 4, -3, 2, -1, 0]), equals([-9, -7, -5, -3, -1, 0, 2, 4, 6, 8]));
      expect(f([-100, 90, -80, 70, -60, 50, -40, 30, -20, 10]), equals([-100, -80, -60, -40, -20, 10, 30, 50, 70, 90]));
    });
  }); // group 'sort_an_array'
}
