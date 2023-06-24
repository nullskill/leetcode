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

    test('returns input string for input with no palindromes', () {
      expect(f('abc'), anyOf(equals('a'), equals('b'), equals('c')));
    });
  }); // group 'longest_palindromic_substring'
}
