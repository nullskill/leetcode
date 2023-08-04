/// The average complexity of this algorithm will be `O(n * 2^n)`, 
/// where `n` is the length of the string. This is because we spend 
/// `O(n^2)` time to fill the `dp` array and `O(n * 2^n)` time to iterate 
/// over all partitions. So the total complexity would be `O(n^2 + n * 2^n)`.
/// But here we can neglect `O(n^2)` because it is of lower priority.
/// So the total complexity will be `O(n * 2^n)`. 
/// The space complexity will be `O(n^2)`, as we store all partitions 
/// in a list of lists (`dp`).

class Solution {
  List<List<String>> partition(String s) {
    // Create an empty list for the result
    List<List<String>> result = [];
    // Create a two-dimensional array for storing boolean values of palindromes
    int n = s.length;
    List<List<bool>> dp = List.generate(n, (_) => List.filled(n, false));
    // Fill the dp array in O(n^2) time
    fillDP(s, dp);
    // Create a stack for storing the current partition and index
    List<Pair> stack = [];
    // Add an empty list and zero index to the stack
    stack.add(Pair([], 0));
    // While the stack is not empty, continue the loop
    while (stack.isNotEmpty) {
      // Pop the last element from the stack
      Pair top = stack.removeLast();
      // Get the current list and index from the element
      List<String> current = top.list;
      int start = top.index;
      // If the index is equal to the length of the string, add the current list to the result
      if (start == n) {
        result.add(List.from(current));
      } else {
        // Otherwise, iterate over all substrings from the index to the end of the string
        for (int i = start; i < n; i++) {
          // If the substring is a palindrome according to the dp array, add it to a copy of the current list
          // and add the copy of the list and the next index to the stack
          if (dp[start][i]) {
            List<String> copy = List.from(current);
            copy.add(s.substring(start, i + 1));
            stack.add(Pair(copy, i + 1));
          }
        }
      }
    }

    return result;
  }

  void fillDP(String s, List<List<bool>> dp) {
    int n = s.length;
    // Iterate over all substring lengths from 1 to n
    for (int len = 1; len <= n; len++) {
      // Iterate over all starting indices of substrings
      for (int i = 0; i <= n - len; i++) {
        // Compute the ending index of the substring
        int j = i + len - 1;
        // Apply the rule for filling dp[i][j]
        if (s[i] == s[j] && (j - i < 2 || dp[i + 1][j - 1])) {
          dp[i][j] = true;
        } else {
          dp[i][j] = false;
        }
      }
    }
  }
}

class Pair {
  List<String> list;
  int index;
  Pair(this.list, this.index);
}

void main(List<String> args) {
  print(Solution().partition("aab")); // [["a","a","b"],["aa","b"]]
  print(Solution().partition("a")); // [["a"]]
}
