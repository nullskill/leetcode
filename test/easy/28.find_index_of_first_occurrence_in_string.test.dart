import 'package:leetcode/src/easy/28.find_index_of_first_occurrence_in_string/main.dart';
import 'package:test/test.dart';

void main() {
  group('find_index_of_first_occurrence_in_string', () {
    final f = Solution().strStr;

    test('f("x", "x")', () {
      expect(f('x', 'x'), 0);
    });

    test('f("", "x")', () {
      expect(f('', 'x'), -1);
    });

    test('f("x", "")', () {
      expect(f('x', ''), 0);
    });

    test('f("abracadabra", "d")', () {
      expect(f('abracadabra', 'd'), 6);
    });

    test('f("sadbutsad", "sad")', () {
      expect(f('sadbutsad', 'sad'), 0);
    });

    test('f("leetcode", "leeto")', () {
      expect(f('leetcode', 'leeto'), -1);
    });

    test('f("parallelogram", "m")', () {
      expect(f('parallelogram', 'm'), 12);
    });
  }); // group 'find_index_of_first_occurrence_in_string'
}
