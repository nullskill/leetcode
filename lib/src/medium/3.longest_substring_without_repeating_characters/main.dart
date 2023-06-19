import 'dart:math';

/// The time complexity of the function is `O(n)`,
/// where `n` is the length of the input string, since it iterates over the string exactly once.
/// The space complexity of the function is `O(1)`, since it uses a fixed-size list of 256 elements.

class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.isEmpty) return 0;

    int maxLength = 1;
    int curLength = 1;
    int prevIndex = -1;
    List<int> visited = List.filled(256, -1);

    visited[s.codeUnitAt(0)] = 0;

    for (int i = 1; i < s.length; i++) {
      int charCode = s.codeUnitAt(i);
      prevIndex = visited[charCode];

      if (prevIndex == -1 || i - curLength > prevIndex) {
        curLength++;
      } else {
        maxLength = max(maxLength, curLength);
        curLength = i - prevIndex;
      }

      visited[charCode] = i;
    }

    return max(maxLength, curLength);
  }
}

void main(List<String> args) {
  print(Solution().lengthOfLongestSubstring('abcabcbb'));
}
