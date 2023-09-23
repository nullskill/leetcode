/// In this iterative solution we use a stack to simulate the recursive call stack.
/// The time complexity of this solution is `O(n)`, where `n` is the number of nodes in the tree.

import 'package:leetcode/src/structure/tree_node.dart';

/// Definition for a binary tree node.
/// class TreeNode {
///   int val;
///   TreeNode? left;
///   TreeNode? right;
///   TreeNode([this.val = 0, this.left, this.right]);
/// }
class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> res = [];
    List<TreeNode> stack = [];
    TreeNode? node = root;
    while (node != null || stack.isNotEmpty) {
      while (node != null) {
        stack.add(node);
        node = node.left;
      }
      node = stack.removeLast();
      res.add(node.val);
      node = node.right;
    }
    return res;
  }
}

void main(List<String> args) {
  final node = TreeNode.of([1, null, 2, 3]);

  print(Solution().inorderTraversal(node));
}


/// NB: The following solution is a DFS (Depth-First Search) algorithm.
