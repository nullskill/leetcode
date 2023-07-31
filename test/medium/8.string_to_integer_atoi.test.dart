import 'package:leetcode/src/medium/8.string_to_integer_atoi/main.dart';
import 'package:test/test.dart';

void main() {
  group('string_to_integer_atoi', () {
    final f = Solution().myAtoi;

    test('f("")', () {
      expect(f(''), equals(0));
    });

    test('f("   ")', () {
      expect(f('   '), equals(0));
    });

    test('f("-2147483648")', () {
      expect(f('-2147483648'), equals(-2147483648));
    });

    test('f("9223372036854775808")', () {
      expect(f('9223372036854775808'), equals(2147483647));
    });

    test('f("words and 987")', () {
      expect(f('words and 987'), equals(0));
    });

    test('f("42")', () {
      expect(f('42'), equals(42));
    });

    test('f("+-12")', () {
      expect(f('+-12'), equals(0));
    });

    test('f("   -42")', () {
      expect(f('   -42'), equals(-42));
    });

    test('f("+4193 with words")', () {
      expect(f('+4193 with words'), equals(4193));
    });
  }); // group 'string_to_integer_atoi'
}
