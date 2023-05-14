/// In this algorithm we use arrays like queues by keeping next element pointers.
/// And then compare both values before inserting them in the array.
/// There are exactly `m+n` comparisons, so the complexity is `O(m+n)`.

class Solution {
  void merge(
    List<int> nums1,
    int m,
    List<int> nums2,
    int n,
  ) {
    var i = m - 1;
    var j = n - 1;
    var k = m + n - 1;
    while (i >= 0 && j >= 0) {
      if (nums1[i] > nums2[j]) {
        nums1[k--] = nums1[i--];
      } else {
        nums1[k--] = nums2[j--];
      }
    }
    while (j >= 0) {
      nums1[k--] = nums2[j--];
    }
  }
}

void main(List<String> args) {
  final nums1 = <int>[1, 2, 3, 0, 0, 0];
  final m = 3;
  final nums2 = <int>[2, 5, 6];
  final n = 3;

  Solution().merge(nums1, m, nums2, n);

  print(nums1);
}
