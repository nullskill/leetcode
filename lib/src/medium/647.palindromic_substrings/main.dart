/// The time complexity of the `countSubstrings` function is `O(n^2)`,
/// where `n` is the length of the input string `s`. This is because we
/// loop over each character in `s` and call the `countPalindromes`
/// function twice for each character.
/// The space complexity of the countSubstrings function is `O(1)`

class Solution {
  int countSubstrings(String s) {
    int count = 0;
    for (int i = 0; i < s.length; i++) {
      count += countPalindromes(s, i, i); // odd-length palindromes
      count += countPalindromes(s, i, i + 1); // even-length palindromes
    }
    return count;
  }

  int countPalindromes(String s, int left, int right) {
    int count = 0;
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      count++;
      left--;
      right++;
    }
    return count;
  }
}

void main(List<String> args) {
  print(Solution().countSubstrings('aaa'));
}
