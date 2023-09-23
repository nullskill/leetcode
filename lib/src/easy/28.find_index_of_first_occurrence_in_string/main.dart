/// This solution works by iterating over each character in haystack
/// and comparing it with the first character in needle.
/// If there is a match, it then compares the remaining characters
/// in needle with the corresponding characters in haystack.
/// If all characters match, it returns the index of the first occurrence
/// of needle in haystack.
/// Otherwise, it continues iterating over the remaining characters in haystack.

class Solution {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty) return 0;
    if (haystack.isEmpty) return -1;

    for (var i = 0; i < haystack.length - needle.length + 1; i++) {
      if (haystack[i] == needle[0]) {
        var j = 0;
        while (j < needle.length && haystack[i + j] == needle[j]) {
          j++;
        }
        if (j == needle.length) return i;
      }
    }

    return -1;
  }
}

void main(List<String> args) {
  final haystack = "sadbutsad";
  final needle = "sad";

  final result = Solution().strStr(haystack, needle);

  print(result);
}

/// NB: This solution is `O(mn)`, where `m` is the length of the input haystack 
/// and `n` is the length of the input needle. 
/// The worst-case scenario is when the haystack and needle are of equal length, 
/// which makes the time complexity quadratic.