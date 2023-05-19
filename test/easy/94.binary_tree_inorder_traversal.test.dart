import 'package:leetcode/src/easy/94.binary_tree_inorder_traversal/main.dart';
import 'package:leetcode/src/structure/tree_node.dart';
import 'package:test/test.dart';

void main() {
  group('binary_tree_inorder_traversal', () {
    final f = Solution().inorderTraversal;

    test('f([1, null, 2, 3])', () {
      expect(f(TreeNode.of([1, null, 2, 3]))..sort(), equals([1, 2, 3]));
    });

    test('f([])', () {
      expect(f(TreeNode.of([])), equals([]));
    });

    test('f([1])', () {
      expect(f(TreeNode.of([1])), equals([1]));
    });

    test('f([-1, null, null])', () {
      expect(f(TreeNode.of([-1, null, null])), equals([-1]));
    });

    test('f([1, null, 2, null, 3])', () {
      expect(f(TreeNode.of([1, null, 2, null, 3]))..sort(), equals([1, 2, 3]));
    });

    test('f([1, 2, null, 3, null])', () {
      expect(f(TreeNode.of([1, 2, null, 3, null]))..sort(), equals([1, 2, 3]));
    });
  }); // group 'binary_tree_inorder_traversal'
}
