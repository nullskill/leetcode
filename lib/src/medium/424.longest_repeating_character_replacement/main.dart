import 'dart:math';

/// The time complexity of the this function is `O(n)`,
/// where n is the length of the input string `s`.
/// This is because the function iterates over the string
/// exactly once using the sliding window algorithm.
/// The space complexity of the function is `O(1)`,
/// since it uses a fixed-size list of length 26
/// to store the count of each character in the string.

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
