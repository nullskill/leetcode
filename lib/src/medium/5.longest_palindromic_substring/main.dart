import 'dart:math';

/// The time complexity of the `longestPalindrome` function is `O(n^2)`,
/// where `n` is the length of the input string `s`. This is because we
/// loop over each character in `s` and call the `expandAroundCenter`
/// function twice for each character. The `expandAroundCenter` function
/// has a time complexity of `O(n)`, where `n` is the length of the input
/// string `s`, because in the worst case we need to expand around the
/// center of the string for each character in the string.
/// The space complexity of the longestPalindrome function is `O(1)`

class Solution {
  String longestPalindrome(String s) {
    if (s.isEmpty) return '';

    int start = 0;
    int end = 0;

    for (int i = 0; i < s.length; i++) {
      int len1 = expandAroundCenter(s, i, i);
      int len2 = expandAroundCenter(s, i, i + 1);
      int len = max(len1, len2);
      if (len > end - start) {
        start = i - (len - 1) ~/ 2;
        end = i + len ~/ 2;
      }
    }

    return s.substring(start, end + 1);
  }

  int expandAroundCenter(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      left--;
      right++;
    }
    return right - left - 1;
  }
}

void main(List<String> args) {
  print(Solution().longestPalindrome('abcabcbb'));
}
