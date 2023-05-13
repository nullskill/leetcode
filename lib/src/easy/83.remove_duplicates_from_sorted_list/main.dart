/// The algorithm removes duplicates from a sorted linked list
/// and returns the linked list sorted as well.
/// It works by iterating through the linked list and comparing
/// each node with its next node. If the values of the two nodes are equal,
/// it removes the next node by setting the current node’s next pointer to
/// the next node’s next pointer.
/// If the values are not equal, it goes on to the next node.
/// The time complexity is `O(n)`, where `n` is the number of nodes in the linked list.

import 'package:leetcode/src/structure/list_node.dart';

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) return null;
    ListNode? current = head;
    while (current?.next != null) {
      if (current?.val == current?.next?.val) {
        current?.next = current.next?.next;
      } else {
        current = current?.next;
      }
    }
    return head;
  }
}

void main(List<String> args) {
  final head = ListNode.of([1, 1, 2, 3, 3]);
  final result = Solution().deleteDuplicates(head);

  print(result);
}
