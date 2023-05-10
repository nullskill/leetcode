import 'package:leetcode/src/easy/35.search_insert_position/main.dart';
import 'package:test/test.dart';

void main() {
  group('search_insert_position', () {
    final f = Solution().searchInsert;

    test('f([1], 0)', () {
      expect(f([1], 0), 0);
    });

    test('f([1], 2)', () {
      expect(f([1], 2), 1);
    });

    test('f([1, 3, 5, 6], 5)', () {
      expect(f([1, 3, 5, 6], 5), 2);
    });

    test('f([1, 3, 5, 6], 2)', () {
      expect(f([1, 3, 5, 6], 2), 1);
    });

    test('f([1, 3, 5, 6], 7)', () {
      expect(f([1, 3, 5, 6], 7), 4);
    });

    test('f([-10, -3, 5, 6], 0)', () {
      expect(f([-10, -3, 5, 6], 0), 2);
    });
  }); // group 'search_insert_position'
}
