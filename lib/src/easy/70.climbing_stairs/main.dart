/// The problem solved dynamic programming.
/// The solution has a time complexity of `O(n)`

class Solution {
  int climbStairs(int n) {
    if (n == 1) {
      return 1;
    }
    int first = 1;
    int second = 2;
    for (var i = 3; i <= n; i++) {
      int third = first + second;
      first = second;
      second = third;
    }
    return second;
  }
}

void main(List<String> args) {
  print(Solution().climbStairs(4)); // 5
  print(Solution().climbStairs(5)); // 8
}
