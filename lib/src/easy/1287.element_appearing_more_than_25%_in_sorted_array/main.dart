/// The solution has a time complexity of `O(n)`
/// and a space complexity of `O(n)`

class Solution {
  int findSpecialInteger(List<int> arr) {
    Map<int, int> count = {};

    for (int i = 0; i < arr.length; i++) {
      count.update(arr[i], (val) => ++val, ifAbsent: () => 1);

      if ((count[arr[i]] ?? 0) / arr.length * 100 > 25) {
        return arr[i];
      }
    }

    return -1;
  }
}

void main(List<String> args) {
  final result = Solution().findSpecialInteger([1, 2, 2, 6, 6, 6, 6, 7, 10]);

  print(result);
}
