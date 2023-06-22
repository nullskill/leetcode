import 'package:leetcode/src/medium/3.longest_substring_without_repeating_characters/main.dart';
import 'package:test/test.dart';

void main() {
  group('longest_substring_without_repeating_characters', () {
    final f = Solution().lengthOfLongestSubstring;

    test('returns 0 when given an empty string', () {
      expect(f(''), equals(0));
    });

    test('returns 1 when given a string with only one character', () {
      expect(f('a'), equals(1));
    });

    test('returns the length of the input string when all characters are unique', () {
      expect(f('abcdefg'), equals(7));
      expect(f('1234567890'), equals(10));
      expect(f('!@#\$%^&*()_+'), equals(12));
    });

    test('returns the length of the longest substring without repeating characters', () {
      expect(f('abcabcbb'), equals(3));
      expect(f('bbbbb'), equals(1));
      expect(f('pwwkew'), equals(3));
    });
  }); // group 'longest_substring_without_repeating_characters'
}
