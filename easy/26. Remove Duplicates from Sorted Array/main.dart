/// This function takes an integer array nums sorted in non-decreasing order
/// and removes the duplicates in-place such that each unique element appears only once.
/// The relative order of the elements is kept the same.
/// The function returns the number of unique elements in nums.
/// This solution is of `O(n)` time complexity.

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;
    int i = 0;
    for (int j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i]) {
        i++;
        nums[i] = nums[j];
      }
    }
    return i + 1;
  }
}

void main(List<String> args) {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  List<int> expectedNums = [0, 1, 2, 3, 4];

  print('nums before: $nums');
  int k = Solution().removeDuplicates(nums);
  print('nums after: $nums');

  assert(
    k == expectedNums.length,
    'Whoops, the length is wrong',
  );
  for (int i = 0; i < k; i++) {
    assert(
      nums[i] == expectedNums[i],
      'Whoops, the element ${nums[i]} is wrong',
    );
  }

  print('Well done!');
}
