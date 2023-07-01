import 'package:leetcode/src/medium/516.longest_palindromic_subsequence/main.dart';
import 'package:test/test.dart';

void main() {
  group('sort_an_array', () {
    final f = Solution().longestPalindromeSubseq;

    test('returns 1 for single-character input', () {
      expect(f('a'), equals(1));
    });

    test('returns correct length for even-length palindromes', () {
      expect(f('abba'), equals(4));
      expect(f('racecar'), equals(7));
    });

    test('returns correct length for odd-length palindromes', () {
      expect(f('aba'), equals(3));
      expect(f('level'), equals(5));
    });

    test('returns correct length for non-palindromic input', () {
      expect(f('abc'), equals(1));
      expect(f('leetcode'), equals(3));
    });

    test('returns correct length for other possible palindromes', () {
      expect(f('bbbab'), equals(4));
      expect(f('cbbd'), equals(2));
    });
  }); // group 'sort_an_array'
}
