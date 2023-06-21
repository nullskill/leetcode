import 'package:leetcode/src/medium/424.longest_repeating_character_replacement/main.dart';
import 'package:test/test.dart';

void main() {
  group('longest_repeating_character_replacement', () {
    final f = Solution().characterReplacement;

    test('f("AABBB", 1)', () {
      expect(f('AABBB', 1), equals(4));
    });

    test('f("ABAB", 2)', () {
      expect(f('ABAB', 2), equals(4));
    });

    test('f("AAAA", 2)', () {
      expect(f('AAAA', 2), equals(4));
    });

    test('f("ABCD", 1)', () {
      expect(f('ABCD', 1), equals(2));
    });

    test('f("ABCD", 0)', () {
      expect(f('ABCD', 0), equals(1));
    });

    test('f("", 0)', () {
      expect(f('', 0), equals(0));
    });

    test('f("A", 0)', () {
      expect(f('A', 0), equals(1));
    });

    test('f("A", 1)', () {
      expect(f('A', 1), equals(1));
    });

    test('f("AB", 0)', () {
      expect(f('AB', 0), equals(1));
    });

    test('f("AB", 1)', () {
      expect(f('AB', 1), equals(2));
    });
  }); // group 'longest_repeating_character_replacement'
}
