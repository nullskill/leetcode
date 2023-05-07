/// This is an implementation of the binary search algorithm that meets the `O(log n)`.
/// This implementation takes a sorted list of integers nums and a target integer target.
/// It returns the index of the target integer if it is found in the list.
/// If it is not found, it returns the index where it would be if it were inserted in order.

class Solution {
  int searchInsert(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return left;
  }
}

void main(List<String> args) {
  final nums = [1, 3, 5, 6];
  final target = 5;

  final result = Solution().searchInsert(nums, target);

  print(result);
}
