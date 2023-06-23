import 'package:leetcode/src/medium/49.group_anagrams/main.dart';
import 'package:test/test.dart';

void main() {
  group('group_anagrams', () {
    final f = Solution().groupAnagrams;

    test('returns empty list for empty input', () {
      expect(f([]), equals([]));
    });

    test('groups anagrams together', () {
      expect(
        f(['eat', 'tea', 'tan', 'ate', 'nat', 'bat']),
        equals([
          ['eat', 'tea', 'ate'],
          ['tan', 'nat'],
          ['bat'],
        ]),
      );
    });

    test('handles input with duplicate strings', () {
      expect(
        f(['eat', 'tea', 'tan', 'ate', 'nat', 'bat', 'eat']),
        equals([
          ['eat', 'tea', 'ate', 'eat'],
          ['tan', 'nat'],
          ['bat'],
        ]),
      );
    });

    test('handles input with single string', () {
      expect(
          f(['a']),
          equals([
            ['a']
          ]));
    });
  }); // group 'group_anagrams'
}
