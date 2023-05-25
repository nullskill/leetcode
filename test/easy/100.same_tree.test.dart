import 'package:leetcode/src/easy/100.same_tree/main.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() {
  group('same_tree', () {
    final f = Solution().isSameTree;

    test('Empty trees are equal', () {
      expect(f(null, null), isTrue);
    });

    test('One empty tree and one non-empty tree are not equal', () {
      expect(f(null, TreeNode(1)), isFalse);
      expect(f(TreeNode(1), null), isFalse);
    });

    test('Trees with different values are not equal', () {
      expect(f(TreeNode(1), TreeNode(2)), isFalse);
    });

    test('Trees with same values and structure are equal', () {
      final tree1 = TreeNode.of([1, 2, 3]);
      final tree2 = TreeNode.of([1, 2, 3]);
      expect(f(tree1, tree2), isTrue);
    });

    test('Trees with same values but different structure are not equal', () {
      final tree1 = TreeNode.of([1, 2, null, 3]);
      final tree2 = TreeNode.of([1, null, 2, null, 3]);
      expect(f(tree1, tree2), isFalse);
    });
  }); // group 'same_tree'
}
