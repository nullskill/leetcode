import 'package:leetcode/src/medium/131.palindrome_partitioning/main.dart';
import 'package:test/test.dart';

void main() {
  group('palindrome_partitioning', () {
    final f = Solution().partition;

    test('returns single-element list for single-character string', () {
      expect(
          f('a'),
          equals([
            ['a']
          ]));
    });

    test('returns correct partitions for palindrome string', () {
      expect(
          f('racecar'),
          equals([
            ['racecar'],
            ['r', 'aceca', 'r'],
            ['r', 'a', 'cec', 'a', 'r'],
            ['r', 'a', 'c', 'e', 'c', 'a', 'r'],
          ]));
    });

    test('returns correct partitions for non-palindrome string', () {
      expect(
          f('aab'),
          equals([
            ['aa', 'b'],
            ['a', 'a', 'b']
          ]));
    });
  }); // group 'palindrome_partitioning'
}
