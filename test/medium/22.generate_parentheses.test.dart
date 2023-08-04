import 'package:leetcode/src/medium/22.generate_parentheses/main.dart';
import 'package:test/test.dart';

void main() {
  group('generate_parentheses', () {
    final f = Solution().generateParenthesis;

    test('returns correct combinations for n = 1', () {
      expect(f(1), equals(['()']));
    });

    test('returns correct combinations for n = 2', () {
      expect(f(2), equals(['(())', '()()']));
    });

    test('returns correct combinations for n = 3', () {
      expect(f(3), equals(['((()))', '(()())', '(())()', '()(())', '()()()']));
    });
  }); // group 'generate_parentheses'
}