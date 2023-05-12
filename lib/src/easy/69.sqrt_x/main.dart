/// We use binary search to find the square root of a number.
/// The time complexity of this algorithm is `O(log n)`.

class Solution {
  int mySqrt(int x) {
    if (x == 0) return 0;
    int left = 1, right = x;
    while (left < right) {
      int mid = left + (right - left + 1) ~/ 2;
      if (mid > x ~/ mid) {
        right = mid - 1;
      } else {
        left = mid;
      }
    }
    return left;
  }
}

void main(List<String> args) {
  print(Solution().mySqrt(4)); // 2
  print(Solution().mySqrt(8)); // 2
}
