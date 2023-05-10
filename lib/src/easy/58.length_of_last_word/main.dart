/// We start from the end of the string and iterate backwards until we find a space character.
/// We keep track of the length of the last word using the `lengthOfLastWord` variable.
/// When we find a space character, we check if the length of the last word is greater than zero.
/// If it is, we set the `foundLastWord` variable to true and exit the loop.
/// If it isn’t, we continue iterating backwards until we find a non-space character.
/// The time complexity of the solution is `O(n)`, where `n` is the length of the input string.

class Solution {
  int lengthOfLastWord(String s) {
    int lengthOfLastWord = 0;
    bool foundLastWord = false;
    for (int i = s.length - 1; i >= 0 && !foundLastWord; i--) {
      if (s[i] == " ") {
        if (lengthOfLastWord > 0) {
          foundLastWord = true;
        }
      } else {
        lengthOfLastWord++;
      }
    }

    return lengthOfLastWord;
  }
}

void main(List<String> args) {
  final result = Solution().lengthOfLastWord('luffy is still joyboy');

  print(result);
}
