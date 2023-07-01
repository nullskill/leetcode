import 'dart:math';

/// The time complexity of the `longestPalindromeSubseq` function is `O(n^2)`,
/// where `n` is the length of the input string `s`. This is because the function
/// uses a dynamic programming approach to compute the length of the longest
/// palindromic subsequence of `s`, which involves filling in an `n * n` table of values.
/// The space complexity of the function is also `O(n^2)`, since it uses a 2D list `dp`
/// of size `n * n` to store the intermediate results of the dynamic programming algorithm.

class Solution {
  int longestPalindromeSubseq(String s) {
    int n = s.length;
    List<List<int>> dp = List.generate(n, (_) => List.filled(n, 0));

    for (int i = n - 1; i >= 0; i--) {
      dp[i][i] = 1;
      for (int j = i + 1; j < n; j++) {
        if (s[i] == s[j]) {
          dp[i][j] = dp[i + 1][j - 1] + 2;
        } else {
          dp[i][j] = max(dp[i + 1][j], dp[i][j - 1]);
        }
      }
    }

    return dp[0][n - 1];
  }
}

void main(List<String> args) {
  print(Solution().longestPalindromeSubseq('bbbab'));
}

/// NB: The time complexity of the `longestPalindromeSubseq` function
/// is optimal at `O(n^2)`, where `n` is the length of the input string `s`.
/// This is because any algorithm that solves the longest palindromic
/// subsequence problem must examine every possible substring of `s`,
/// which takes `O(n^2)` time.
