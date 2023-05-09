class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  static ListNode? of(Iterable<int> collection) {
    final iterator = collection.iterator;
    if (!iterator.moveNext()) return null;
    final head = ListNode(iterator.current);
    var node = head;
    while (iterator.moveNext()) {
      node = node.next = ListNode(iterator.current);
    }
    return head;
  }

  @override
  String toString() {
    return '$val${next == null ? '' : ', $next'}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListNode && other.val == val;
  }

  @override
  int get hashCode => val.hashCode;
}
