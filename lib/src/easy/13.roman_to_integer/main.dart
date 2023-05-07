/// This solution maintains a map with Roman symbols and their corresponding integer equivalent.
/// It scans the string from right to left and gets the corresponding value to the current character
/// from the map and adds it into the result.
/// If the value of the current character is less than the value of the next character,
/// it subtracts it from the result; otherwise, it adds it to the result.
/// The time complexity of the algorithm is `O(n)` where n is the length of the input string.

class Solution {
  int romanToInt(String s) {
    final map = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    var result = map[s[s.length - 1]]!;

    for (var i = s.length - 2; i >= 0; i--) {
      final currentNumber = map[s[i]]!;
      final nextNumber = map[s[i + 1]]!;

      if (currentNumber < nextNumber) {
        result -= currentNumber;
      } else {
        result += currentNumber;
      }
    }
    return result;
  }
}

void main(List<String> args) {
  final x = 'MCMXCIV';

  final result = Solution().romanToInt(x);

  print(result);
}
