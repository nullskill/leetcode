import 'package:leetcode/src/easy/242.valid_anagram/main.dart';
import 'package:test/test.dart';

void main() {
  group('valid_anagram', () {
    final f = Solution().isAnagram;

    test('returns true for two empty strings', () {
      expect(f('', ''), isTrue);
    });

    test('returns true for two identical strings', () {
      expect(f('abc', 'abc'), isTrue);
    });

    test('returns false for two strings with different lengths', () {
      expect(f('abc', 'abcd'), isFalse);
    });

    test('returns false for two strings with different characters', () {
      expect(f('abc', 'def'), isFalse);
    });

    test('returns true for two anagram strings', () {
      expect(f('anagram', 'nagaram'), isTrue);
      expect(f('rat', 'tar'), isTrue);
      expect(f('listen', 'silent'), isTrue);
    });

    test('returns false for two non-anagram strings', () {
      expect(f('anagram', 'margin'), isFalse);
      expect(f('rat', 'cat'), isFalse);
      expect(f('listen', 'lister'), isFalse);
    });
  }); // group 'valid_anagram'
}
