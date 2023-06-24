import 'package:leetcode/src/medium/5.longest_palindromic_substring/main.dart';
import 'package:test/test.dart';

void main() {
  group('longest_palindromic_substring', () {
    final f = Solution().longestPalindrome;

    test('returns empty string for empty input', () {
      expect(f(''), equals(''));
    });

    test('returns single-character string for input with one character', () {
      expect(f('a'), equals('a'));
    });

    test('returns longest palindromic substring for input with multiple palindromes', () {
      expect(f('babad'), anyOf(equals('bab'), equals('aba')));
      expect(f('cbbd'), equals('bb'));
    });

    test('returns longest palindromic substring for alphanumeric input', () {
      expect(f('a1b2c3d3c2b1a'), equals('a1b2c3d3c2b1a'));
      expect(f('racecar12321'), equals('racecar'));
    });

    test('returns input string for alphanumeric input with no palindromes', () {
      expect(f('abc123'), anyOf(equals('a'), equals('b'), equals('c'), equals('1'), equals('2'), equals('3')));
    });
  }); // group 'longest_palindromic_substring'
}
