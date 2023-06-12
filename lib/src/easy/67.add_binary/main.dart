/// This algorithm adds two binary strings by iterating over each string
/// from the end to the beginning and adding the corresponding digits.
/// If the sum of two digits is greater than 1, then we need to carry over
/// the 1 to the next digit.
/// We use a StringBuffer to store the result and then return it as a string.
/// The complexity is `O(n)`, where `n` is the length of the longer string.

class Solution {
  String addBinary(String a, String b) {
    int codeZero = '0'.codeUnitAt(0);
    int i = a.length - 1;
    int j = b.length - 1;
    int carry = 0;
    final sb = StringBuffer();
    while (i >= 0 || j >= 0) {
      int sum = carry;
      if (i >= 0) sum += a.codeUnitAt(i--) - codeZero;
      if (j >= 0) sum += b.codeUnitAt(j--) - codeZero;
      sb.writeCharCode(sum % 2 + codeZero);
      carry = sum ~/ 2;
    }
    if (carry != 0) sb.writeCharCode(carry + codeZero);
    return sb.toString().split('').reversed.join('');
  }
}

void main() {
  String a = "11", b = "1";
  print(Solution().addBinary(a, b)); // "100"

  a = "1010";
  b = "1011";
  print(Solution().addBinary(a, b)); // "10101"
}
