// The function takes two arguments of type ListNode and returns a ListNode.
// The function creates a dummy node and a tail node.
// It then iterates through both lists and compares the values of the first nodes of both lists.
// It appends the node with the smaller value to the tail node
// and moves the pointer of that list to the next node.
// Finally, it returns the merged list.

import '../../structure/list_node.dart';

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode dummy = ListNode(0);
    ListNode tail = dummy;

    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        tail.next = list1;
        list1 = list1.next;
      } else {
        tail.next = list2;
        list2 = list2.next;
      }
      tail = tail.next!;
    }

    if (list1 != null) {
      tail.next = list1;
    } else {
      tail.next = list2;
    }

    return dummy.next;
  }
}

void main(List<String> args) {
  final l1 = ListNode.of([1, 2, 4]);
  final l2 = ListNode.of([1, 3, 4]);

  final result = Solution().mergeTwoLists(l1, l2);

  print(result);
}

/// NB: We intentionally avoid the recursion here because
/// it can potentially lead to stack overflow errors.
/// The time complexity of the function is `O(n)`,
/// where `n` is the total number of nodes in both lists.
/// This is because the function iterates through both lists only once
/// and compares the values of the nodes of both lists.
