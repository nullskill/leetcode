import 'package:leetcode/src/easy/67.add_binary/main.dart';
import 'package:test/test.dart';

void main() {
  group('add_binary', () {
    final f = Solution().addBinary;

    test('f("0", "1")', () {
      expect(f('0', '1'), equals('1'));
    });

    test('f("11", "1")', () {
      expect(f('11', '1'), equals('100'));
    });

    test('f("1010", "1011")', () {
      expect(f('1010', '1011'), equals('10101'));
    });

    test('f("001", "010")', () {
      expect(f('001', '010'), equals('011'));
    });

    test('f("1000", "000")', () {
      expect(f('1000', '000'), equals('1000'));
    });
  }); // group 'add_binary'
}
