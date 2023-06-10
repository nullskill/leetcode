/// The algorithm uses `for` loop to iterate through each character of the strings,
/// so the time complexity is `S * n`, where `S` is the length of the longest common prefix
/// and `n` is the number of strings in the list.
/// In each iteration of the loop, we compare the characters
/// of the strings at the same position until there is a mismatch or one of the strings ends.
/// We then update the prefix to the common characters and continue to the next string.
/// If at any point the prefix becomes empty, we know that there is no common prefix and return an empty string.

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return '';
    String prefix = strs[0];
    for (int i = 1; i < strs.length; i++) {
      while (strs[i].indexOf(prefix) != 0) {
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) return '';
      }
    }
    return prefix;
  }
}

void main(List<String> args) {
  final x = ["flower", "flow", "flight"];

  final result = Solution().longestCommonPrefix(x);

  print(result);
}
