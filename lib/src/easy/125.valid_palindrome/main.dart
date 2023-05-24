/// This function converts all uppercase letters into lowercase letters
/// and removes all non-alphanumeric characters.
/// Then it checks if the string reads the same forward and backward.
/// If it does, it returns true. Otherwise, it returns false.

class Solution {
  bool isPalindrome(String s) {
    s = s.toLowerCase();
    const alphanumeric = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < s.length; i++) {
      if (alphanumeric.contains(s[i])) {
        buffer.write(s[i]);
      }
    }
    final filtered = buffer.toString();
    for (var i = 0; i < filtered.length / 2; i++) {
      if (filtered[i] != filtered[filtered.length - i - 1]) {
        return false;
      }
    }
    return true;
  }
}

void main(List<String> args) {
  print(Solution().isPalindrome('A man, a plan, a canal: Panama'));
}

/// NB: The time complexity of this function is `O(n)`, 
/// where `n` is the length of the input string. 
/// This is because we iterate over the string twice, 
/// once to filter out non-alphanumeric characters 
/// and once to check if the string reads the same forward and backward.
/// We intentionally do not use RegExp to filter out non-alphanumerics.