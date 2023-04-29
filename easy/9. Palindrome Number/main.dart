/// The function takes an integer `x` as input and returns true if `x` is a palindrome,
/// and false otherwise. The function first checks if the input integer is negative.
/// If it is negative, it returns false. If it is positive, it reverses the integer
/// and checks if the reversed integer is equal to the original integer.
/// If they are equal, it returns true. Otherwise, it returns false.
/// For example, if we call `isPalindrome(121)`, it will return true
/// because 121 reads as 121 from left to right and from right to left.
/// If we call `isPalindrome(-121)`, it will return false because from left to right, it reads -121.
/// From right to left, it becomes 121-. Therefore it is not a palindrome.
/// If we call `isPalindrome(10)`, it will return false because it reads 01 from right to left.
/// Therefore it is not a palindrome.
/// The time complexity of the function is `O(log10(x))`

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    int reversed = 0;
    int original = x;
    while (x != 0) {
      reversed = reversed * 10 + x % 10;
      x ~/= 10;
    }
    return original == reversed;
  }
}

void main(List<String> args) {
  final x = 121;

  final result = Solution().isPalindrome(x);

  print(result);
}

/// NB: If we convert the integer to a string and reverse it, 
/// the time complexity of the function would be `O(n)` 
/// where `n` is the number of digits in the input integer.