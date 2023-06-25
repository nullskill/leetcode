import 'package:leetcode/src/medium/647.palindromic_substrings/main.dart';
import 'package:test/test.dart';

void main() {
  group('sort_an_array', () {
    final f = Solution().countSubstrings;

    test('returns 0 for empty input', () {
      expect(f(''), equals(0));
    });

    test('returns correct count for single-character input', () {
      expect(f('a'), equals(1));
    });

    test('returns correct count for input with single-character palindromic substrings', () {
      expect(f('abc'), equals(3));
    });

    test('returns correct count for input with palindromes', () {
      expect(f('aba'), equals(4));
      expect(f('abba'), equals(6));
      expect(f('racecar'), equals(10));
    });
  }); // group 'sort_an_array'
}
