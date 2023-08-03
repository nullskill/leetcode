/// The time and space complexity of this code is `O(4^n / √n)`

class Solution {
  List<String> generateParenthesis(int n) {
    List<String> result = [];

    _generate(result, "", 0, 0, n);

    return result;
  }

  void _generate(List<String> result, String current, int open, int close, int n) {
    if (current.length == n * 2) {
      result.add(current);
      return;
    }
    if (open < n) {
      _generate(result, "$current(", open + 1, close, n);
    }
    if (close < open) {
      _generate(result, "$current)", open, close + 1, n);
    }
  }
}

void main(List<String> args) {
  print(Solution().generateParenthesis(3));
}
