/// This function has a time complexity of `O(n)`,
/// where `n` is the length of `nums`. This is because
/// the function iterates through nums once and
/// performs constant time operations on each element.
/// The function also uses a map to store the prefix sum,
/// which has a space complexity of `O(n)` in the worst case,
/// where `n` is the length of `nums`.

class Solution {
  int subarraySum(List<int> nums, int k) {
    int count = 0;
    int sum = 0;
    Map<int, int> prefixSum = {0: 1};

    for (int i = 0; i < nums.length; i++) {
      sum += nums[i];
      if (prefixSum.containsKey(sum - k)) {
        count += prefixSum[sum - k]!;
      }
      prefixSum[sum] = (prefixSum[sum] ?? 0) + 1;
    }

    return count;
  }
}

void main(List<String> args) {
  print(Solution().subarraySum([-1, -1, 1], 0));
  print(Solution().subarraySum([1, 2, 5, 3, 4], 6));
  print(Solution().subarraySum([1, 1, 1], 2));
  print(Solution().subarraySum([1], 1));
  print(Solution().subarraySum([-1, 2, -1, -2, -3], -3));
}
