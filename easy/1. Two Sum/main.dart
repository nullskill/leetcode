/// Here is the way to solve this problem with O(n) complexity:
/// 1. Create an empty Map.
/// 2. Loop through each element in the array.
/// 3. For each element, calculate the difference between the target and the current element.
/// 4. Check if the difference is already in the Map.
/// 5. If it is, return the indices of the current element and the difference.
/// 6. If it is not, add the current element and its index to the Map.
/// 7. If no solution is found after looping through all elements, return an empty list.

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }
      map[nums[i]] = i;
    }
    return [];
  }
}

void main(List<String> args) {
  final List<int> nums = [2, 7, 11, 15];
  final int target = 9;

  final result = Solution().twoSum(nums, target);

  print(result);
}

/// NB: The other possible solution yet not optimized is brute force of the given input array,
/// thus it is of O(n^2) complexity by time.
