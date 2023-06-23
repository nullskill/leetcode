/// This function has a time complexity of `O(n)`,
/// where `n` is the length of the input strings.
/// And it has a space complexity of `O(1)`.

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<int> chars = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      final index = s.codeUnitAt(i) - 'a'.codeUnitAt(0);
      chars[index]++;
    }

    for (int i = 0; i < t.length; i++) {
      final index = t.codeUnitAt(i) - 'a'.codeUnitAt(0);
      if (chars[index] == 0) return false;

      chars[index]--;
    }

    return true;
  }
}

void main(List<String> args) {
  print(Solution().isAnagram('anagram', 'nagaram'));
}

/// NB: if the inputs contain Unicode characters
/// we could adapt the solution to use a Map instead of a List
/// So it would take `O(n)` time and `O(k)` space,
/// where `k` is the number of unique characters in the input string
