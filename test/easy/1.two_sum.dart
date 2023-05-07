import 'package:leetcode/src/easy/1.two_sum/main.dart';
import 'package:test/test.dart';

void main() {
  group('two_sum', () {
    final f = Solution().twoSum;

    test('f([2, 7, 11, 15], 9)', () {
      expect(f([2, 7, 11, 15], 9), [0, 1]);
    });

    test('f([3, 2, 4], 6)', () {
      expect(f([3, 2, 4], 6), [1, 2]);
    });

    test('f([3, 3], 6)', () {
      expect(f([3, 3], 6), [0, 1]);
    });

    // TODO: Add more tests
  }); // group 'two_sum'
}
