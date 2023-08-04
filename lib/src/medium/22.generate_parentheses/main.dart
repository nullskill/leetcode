/// The average time and space complexity of this code is `O(4^n / √n)`.
/// This is because we have `2^n` left bracket and `2^(n-1)` right bracket
/// combinations. Here we get `2^n x 2^(n-1) = 4^n`.
/// There are also `√n` invalid combinations with right bracket 
/// on the left position and left bracket on the right position.
/// That's why we have to divide `4^n` by `√n`.

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
