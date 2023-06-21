import 'dart:math';

/// The time complexity of the this function is `O(n)`,
/// where n is the length of the input string `s`.
/// This is because the function iterates over the string
/// exactly once using the sliding window algorithm.
/// The space complexity of the function is `O(1)`,
/// since it uses a fixed-size list of length 26
/// to store the count of each character in the string.
///
/// The algorithm uses a sliding window approach to find the length
/// of the longest substring containing the same letter you can get
/// after performing at most `k` character replacements. It maintains
/// a count of the frequency of each letter in the current window
/// and updates the maximum count seen so far. If the number of
/// characters that need to be replaced to make all characters in
/// the window the same exceeds `k`, it shrinks the window from the
/// left side. The length of the window is updated at each step and
/// the maximum length seen so far is returned at the end.

class Solution {
  int characterReplacement(String s, int k) {
    int maxCount = 0, maxLength = 0;
    int left = 0;
    List<int> count = List.filled(26, 0);

    for (int right = 0; right < s.length; right++) {
      int index = s.codeUnitAt(right) - 'A'.codeUnitAt(0);
      count[index]++;
      maxCount = max(maxCount, count[index]);

      while (right - left + 1 - maxCount > k) {
        int leftIndex = s.codeUnitAt(left) - 'A'.codeUnitAt(0);
        count[leftIndex]--;
        left++;
      }

      maxLength = max(maxLength, right - left + 1);
    }

    return maxLength;
  }
}

void main(List<String> args) {
  print(Solution().characterReplacement('AABABBA', 1));
}
