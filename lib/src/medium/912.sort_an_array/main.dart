/// This function uses the In-Place Heap Sort algorithm to sort
/// the array in `O(nlog(n))` time complexity and `O(1)` space complexity.
/// The function first builds a max-heap from the input array by calling
/// the `heapify` function on each non-leaf node of the heap.
/// The function then repeatedly extracts the maximum element from the heap
/// and places it at the end of the array, while maintaining the heap property
/// by calling the `heapify` function on the remaining elements of the heap.
///
/// The `heapify` function takes an array of integers `nums`, the size of the heap `n`,
/// and an index `i` as input, and modifies the array in place to satisfy the heap property.
/// The function compares the element at index `i` with its left and right children,
/// and swaps the element with the largest child if necessary.
/// The function then recursively calls itself on the swapped child to ensure that
/// the heap property is satisfied.

class Solution {
  List<int> sortArray(List<int> nums) {
    int n = nums.length;

    for (int i = (n ~/ 2) - 1; i >= 0; i--) {
      heapify(nums, n, i);
    }

    for (int i = n - 1; i >= 0; i--) {
      int temp = nums[0];
      nums[0] = nums[i];
      nums[i] = temp;

      heapify(nums, i, 0);
    }

    return nums;
  }

  void heapify(List<int> nums, int n, int i) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    if (left < n && nums[left] > nums[largest]) {
      largest = left;
    }

    if (right < n && nums[right] > nums[largest]) {
      largest = right;
    }

    if (largest != i) {
      int temp = nums[i];
      nums[i] = nums[largest];
      nums[largest] = temp;

      heapify(nums, n, largest);
    }
  }
}

void main(List<String> args) {
  print(Solution().sortArray([5, 1, 1, 2, 0, 0]));
}
