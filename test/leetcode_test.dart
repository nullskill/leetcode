import 'package:test/test.dart';

import 'easy/1.two_sum.test.dart' as two_sum;
import 'easy/13.roman_to_integer.test.dart' as roman_to_integer;
import 'easy/14.longest_common_prefix.test.dart' as longest_common_prefix;
import 'easy/20.valid_parentheses.test.dart' as valid_parentheses;
import 'easy/21.merge_two_sorted_lists.test.dart' as merge_two_sorted_lists;
import 'easy/26.remove_duplicates_from_sorted_array.test.dart' as remove_duplicates_from_sorted_array;
import 'easy/27.remove_element.test.dart' as remove_element;
import 'easy/9.palindrome_number.test.dart' as palindrome_number;

void main() {
  group('solution', () {
    two_sum.main();
    palindrome_number.main();
    roman_to_integer.main();
    longest_common_prefix.main();
    valid_parentheses.main();
    merge_two_sorted_lists.main();
    remove_duplicates_from_sorted_array.main();
    remove_element.main();
  });
}
