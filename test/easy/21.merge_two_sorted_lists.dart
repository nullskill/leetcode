import 'package:leetcode/src/easy/21.merge_two_sorted_lists/main.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() {
  group('merge_two_sorted_lists', () {
    final f = Solution().mergeTwoLists;

    test('f(ListNode.of([0]), ListNode.of([-100]))', () {
      expect(
        f(ListNode.of([0]), ListNode.of([-100])),
        ListNode.of([-100, 0]),
      );
    });

    test('f(ListNode.of([0, 10, 20]), ListNode.of([-20, -10, 0]))', () {
      expect(
        f(ListNode.of([0, 10, 20]), ListNode.of([-20, -10, 0])),
        ListNode.of([-20, -10, 0, 0, 10, 20]),
      );
    });

    test('f(ListNode.of([]), ListNode.of([]))', () {
      expect(
        f(ListNode.of([]), ListNode.of([])),
        ListNode.of([]),
      );
    });

    test('f(ListNode.of([1, 2, 4]), ListNode.of([1, 3, 4]))', () {
      expect(
        f(ListNode.of([1, 2, 4]), ListNode.of([1, 3, 4])),
        ListNode.of([1, 1, 2, 3, 4, 4]),
      );
    });

    test('f(ListNode.of([]), ListNode.of([0]))', () {
      expect(
        f(ListNode.of([]), ListNode.of([0])),
        ListNode.of([0]),
      );
    });
  }); // group 'merge_two_sorted_lists'
}
