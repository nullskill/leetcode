import 'package:leetcode/src/easy/14.longest_common_prefix/main.dart';
import 'package:test/test.dart';

void main() {
  group('longest_common_prefix', () {
    final f = Solution().longestCommonPrefix;

    test('f([])', () {
      expect(f([]), '');
    });

    test('f(["foo", "bar", "baz", "qux"])', () {
      expect(f(['foo', 'bar', 'baz', 'qux']), '');
    });

    test('f(["flower", "flow", "flight"])', () {
      expect(f(['flower', 'flow', 'flight']), 'fl');
    });

    test('f(["dog","racecar","car"])', () {
      expect(f(['dog', 'racecar', 'car']), '');
    });

    test('f(["submission", "subtraction", "substitution", "synchronization"])', () {
      expect(f(['submission', 'subtraction', 'substitution', 'synchronization']), 's');
    });
  }); // group 'longest_common_prefix'
}
