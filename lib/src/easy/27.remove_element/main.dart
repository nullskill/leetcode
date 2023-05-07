/// This code will remove all occurrences of `val` in `nums` in-place
/// and return the length of resulted `nums`.
/// The time complexity of this solution is `O(n)`,
/// where `n` is the length of the input array `nums`.
/// This is because we are iterating through the array once.

class Solution {
  int removeElement(List<int> nums, int val) {
    var i = nums.length;
    while (i > 0) {
      i--;

      if (nums[i] == val) {
        nums.removeAt(i);
      }
    }

    return nums.length;
  }
}

void main(List<String> args) {
  List<int> nums = [0, 1, 2, 2, 3, 0, 4, 2];
  int val = 2;
  List<int> expectedNums = [0, 1, 4, 0, 3];

  print('nums before: $nums');
  int k = Solution().removeElement(nums, val);
  print('number of non `$val` elements: $k');

  assert(
    k == expectedNums.length,
    'Whoops, the length is wrong',
  );

  nums.sort();
  expectedNums.sort();
  print('nums after: $nums');
  print('expectedNums: $expectedNums');

  for (int i = 0; i < k; i++) {
    assert(
      nums[i] == expectedNums[i],
      'Whoops, the element ${nums[i]} is wrong',
    );
  }

  print('Well done!');
}
