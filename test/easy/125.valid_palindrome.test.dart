import 'package:leetcode/src/easy/125.valid_palindrome/main.dart';
import 'package:test/test.dart';

void main() {
  group('valid_palindrome', () {
    final f = Solution().isPalindrome;

    test('returns true for empty string', () {
      expect(f(''), isTrue);
    });

    test('returns true for single-character string', () {
      expect(f('a'), isTrue);
    });

    test('returns true for palindrome string with lowercase letters', () {
      expect(f('racecar'), isTrue);
    });

    test('returns true for palindrome string with mixed-case letters', () {
      expect(f('A man, a plan, a canal: Panama'), isTrue);
    });

    test('returns false for non-palindrome string with lowercase letters', () {
      expect(f('hello'), isFalse);
    });

    test('returns false for non-palindrome string with mixed-case letters', () {
      expect(f('not a palindrome'), isFalse);
    });
  }); // group 'valid_palindrome'
}
