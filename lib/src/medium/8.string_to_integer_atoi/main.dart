class Solution {
  int myAtoi(String s) {
    s = s.trim();

    if (s.isEmpty) return 0;

    bool isNegative = false;
    if (s[0] == '-') {
      isNegative = true;
      s = s.substring(1);
    } else if (s[0] == '+') {
      s = s.substring(1);
    }

    String digits = '0123456789';
    int result = 0;

    for (var i = 0; i < s.length; i++) {
      if (!digits.contains(s[i])) break;

      result = result * 10 + int.parse(s[i]);

      if (isNegative && -result < -2147483648) {
        return -2147483648;
      } else if (!isNegative && result > 2147483647) {
        return 2147483647;
      }
    }

    return result *= isNegative ? -1 : 1;
  }
}

void main(List<String> args) {
  print(Solution().myAtoi('-2147483648'));
  print(Solution().myAtoi('9223372036854775808'));
  print(Solution().myAtoi('words and 987'));
  print(Solution().myAtoi('42'));
  print(Solution().myAtoi('+-12'));
  print(Solution().myAtoi('   -42'));
  print(Solution().myAtoi('+4193 with words'));
}
