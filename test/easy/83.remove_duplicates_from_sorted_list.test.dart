import 'package:leetcode/src/easy/83.remove_duplicates_from_sorted_list/main.dart';
import 'package:leetcode/src/structure/list_node.dart';
import 'package:test/test.dart';

void main() {
  group('climbing_stairs', () {
    final f = Solution().deleteDuplicates;

    test('f(ListNode.of([]))', () {
      expect(f(ListNode.of([])), equals(ListNode.of([])));
    });

    test('f(null)', () {
      expect(f(null), equals(null));
    });

    test('f(ListNode.of([0])', () {
      expect(
          f(ListNode.of([0, 0, 0])),
          equals(
            ListNode.of([0]),
          ));
    });

    test('f(ListNode.of([1, 1, 2]))', () {
      expect(
          f(ListNode.of([1, 1, 2])),
          equals(
            ListNode.of([1, 2]),
          ));
    });

    test('f(ListNode.of([1, 1, 2, 3, 3]))', () {
      expect(
          f(ListNode.of([1, 1, 2, 3, 3])),
          equals(
            ListNode.of([1, 2, 3]),
          ));
    });

    test('f(ListNode.of([-20, -10, -10, 0, 0, 10, 20]))', () {
      expect(
          f(ListNode.of([-20, -10, -10, 0, 0, 10, 20])),
          equals(
            ListNode.of([-20, -10, 0, 10, 20]),
          ));
    });
  }); // group 'climbing_stairs'
}
