import 'package:leetcode/src/easy/13.roman_to_integer/main.dart';
import 'package:test/test.dart';

void main() {
  group('roman_to_integer', () {
    final f = Solution().romanToInt;

    test('f("I")', () {
      expect(f('I'), 1);
    });

    test('f("III")', () {
      expect(f('III'), 3);
    });

    test('f("IV")', () {
      expect(f('IV'), 4);
    });

    test('f("LVIII")', () {
      expect(f('LVIII'), 58);
    });

    test('f("MCMXCIV")', () {
      expect(f('MCMXCIV'), 1994);
    });

    test('f("MMMCMXCIX")', () {
      expect(f('MMMCMXCIX'), 3999);
    });
  }); // group 'roman_to_integer'
}
