import 'package:leetcode/src/easy/66.plus_one/main.dart';
import 'package:test/test.dart';

void main() {
  group('plus_one', () {
    final f = Solution().plusOne;

    test('f([0])', () {
      expect(f([0]), equals([1]));
    });

    test('f([1, 2, 3])', () {
      expect(f([1, 2, 3]), equals([1, 2, 4]));
    });

    test('f([4, 3, 2, 1])', () {
      expect(f([4, 3, 2, 1]), equals([4, 3, 2, 2]));
    });

    test('f([9])', () {
      expect(f([9]), equals([1, 0]));
    });

    test('f([5, 9])', () {
      expect(f([5, 9]), equals([6, 0]));
    });

    test('f([1, 0, 9, 9, 9])', () {
      expect(f([1, 0, 9, 9, 9]), equals([1, 1, 0, 0, 0]));
    });
  }); // group 'plus_one'
}
