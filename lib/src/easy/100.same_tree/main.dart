import 'dart:collection';

import 'package:leetcode/src/structure/tree_node.dart';

/// This solution uses two queues to traverse both trees level by level.
/// It checks if both nodes have the same value and then adds their
/// left and right children to the queues. If one of the nodes has a child
/// and the other doesn’t, it returns false. If both queues are empty, it returns true.
/// Here we visit each node exactly once. So the time complexity of this solution is `O(n)`,
/// where `n` is the number of nodes in the tree.

class Solution {
  bool isSameTree(TreeNode? p, TreeNode? q) {
    final queueP = Queue<TreeNode?>();
    final queueQ = Queue<TreeNode?>();
    queueP.add(p);
    queueQ.add(q);
    while (queueP.isNotEmpty && queueQ.isNotEmpty) {
      final nodeP = queueP.removeFirst();
      final nodeQ = queueQ.removeFirst();
      if (nodeP == null && nodeQ == null) continue;
      if (nodeP == null || nodeQ == null) return false;
      if (nodeP.val != nodeQ.val) return false;
      queueP.add(nodeP.left);
      queueQ.add(nodeQ.left);
      queueP.add(nodeP.right);
      queueQ.add(nodeQ.right);
    }
    return true;
  }
}

void main(List<String> args) {
  print(Solution().isSameTree(TreeNode.of([1, 2, 3]), TreeNode.of([1, 2, 3])));
}
