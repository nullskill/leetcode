import 'package:leetcode/src/easy/58.length_of_last_word/main.dart';
import 'package:test/test.dart';

void main() {
  group('length_of_last_word', () {
    final f = Solution().lengthOfLastWord;

    test('f("")', () {
      expect(f(''), 0);
    });

    test('f("   ")', () {
      expect(f('   '), 0);
    });

    test('f("   x")', () {
      expect(f('   x'), 1);
    });

    test('f("x   ")', () {
      expect(f('x   '), 1);
    });

    test('f("Hello World")', () {
      expect(f('Hello World'), 5);
    });

    test('f("   fly me   to   the moon  ")', () {
      expect(f('   fly me   to   the moon  '), 4);
    });

    test('f("luffy is still joyboy")', () {
      expect(f('luffy is still joyboy'), 6);
    });
  }); // group 'length_of_last_word'
}
