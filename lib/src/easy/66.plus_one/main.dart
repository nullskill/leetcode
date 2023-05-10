/// The function takes in an integer array of digits and returns
/// the resulting array of digits after incrementing the large integer by one.
/// The function loops through the array from the last index till the first index.
/// If the number at current index is smaller than 9 then add one to the number
/// and return the array else set the number to zero. If all numbers are set to zero
/// then create a new array with length `n+1` and set the first element to one.
/// The complexity of the function is `O(n)`, where `n` is the length of the input array.

class Solution {
  List<int> plusOne(List<int> digits) {
    int n = digits.length;
    for (int i = n - 1; i >= 0; i--) {
      if (digits[i] < 9) {
        digits[i]++;
        return digits;
      }
      digits[i] = 0;
    }
    List<int> res = List.filled(n + 1, 0);
    res[0] = 1;
    return res;
  }
}

void main(List<String> args) {
  final result = Solution().plusOne([4, 3, 2, 1]);

  print(result);
}
