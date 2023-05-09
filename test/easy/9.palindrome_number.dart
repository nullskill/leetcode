import 'package:leetcode/src/easy/9.palindrome_number/main.dart';
import 'package:test/test.dart';

void main() {
  group('palindrome_number', () {
    final f = Solution().isPalindrome;

    test('f(0)', () {
      expect(f(0), true);
    });

    test('f(111)', () {
      expect(f(111), true);
    });

    test('f(121)', () {
      expect(f(121), true);
    });

    test('f(-121)', () {
      expect(f(-121), false);
    });

    test('f(10)', () {
      expect(f(10), false);
    });

    test('f(123)', () {
      expect(f(123), false);
    });

    test('f(-231)', () {
      expect(f(-231), false);
    });
  }); // group 'two_sum'
}
