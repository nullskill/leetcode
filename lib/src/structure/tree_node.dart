import 'dart:convert';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);

  static TreeNode? of(Iterable<int?> collection) {
    final iterator = collection.iterator;
    if (!iterator.moveNext() || iterator.current == null) return null;
    final head = TreeNode(iterator.current!);
    for (var queue = <TreeNode>[head]; queue.isNotEmpty;) {
      final newQueue = <TreeNode>[];
      for (final node in queue) {
        if (!iterator.moveNext()) return head;
        if (iterator.current != null) newQueue.add(node.left = TreeNode(iterator.current!));
        if (!iterator.moveNext()) return head;
        if (iterator.current != null) newQueue.add(node.right = TreeNode(iterator.current!));
      }
      queue = newQueue;
    }
    return head;
  }

  Map<String, Object?> toJson() => <String, Object?>{
        'val': val,
        'left': left?.toJson(),
        'right': right?.toJson(),
      };

  @override
  String toString() => const JsonEncoder.withIndent(' ').convert(this);
}
