import 'package:leetcode/src/easy/20.valid_parentheses/main.dart';
import 'package:test/test.dart';

void main() {
  group('valid_parentheses', () {
    final f = Solution().isValid;

    test('f("}")', () {
      expect(f('}'), false);
    });

    test('f("()")', () {
      expect(f('()'), true);
    });

    test('f("()[]{}")', () {
      expect(f('()[]{}'), true);
    });

    test('f("(]")', () {
      expect(f('(]'), false);
    });

    test('f("()([]")', () {
      expect(f('()([]'), false);
    });

    test('f("()[])")', () {
      expect(f('()[])'), false);
    });

    test('f("(()))")', () {
      expect(f('(()))'), false);
    });

    test('f("([{}(){}])")', () {
      expect(f('([{}(){}])'), true);
    });
  }); // group 'valid_parentheses'
}
