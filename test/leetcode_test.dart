import 'package:test/test.dart';

import 'easy/1.two_sum.test.dart' as two_sum;
import 'easy/100.same_tree.test.dart' as same_tree;
import 'easy/125.valid_palindrome.test.dart' as valid_palindrome;
import 'easy/1287.element_appearing_more_than_25%_in_sorted_array.test.dart'
    as element_appearing_more_than_25_percent_in_sorted_array;
import 'easy/13.roman_to_integer.test.dart' as roman_to_integer;
import 'easy/14.longest_common_prefix.test.dart' as longest_common_prefix;
import 'easy/20.valid_parentheses.test.dart' as valid_parentheses;
import 'easy/21.merge_two_sorted_lists.test.dart' as merge_two_sorted_lists;
import 'easy/242.valid_anagram.test.dart' as valid_anagram;
import 'easy/26.remove_duplicates_from_sorted_array.test.dart' as remove_duplicates_from_sorted_array;
import 'easy/27.remove_element.test.dart' as remove_element;
import 'easy/28.find_index_of_first_occurrence_in_string.test.dart'
    as find_the_index_of_the_first_occurrence_in_a_string;
import 'easy/35.search_insert_position.test.dart' as search_insert_position;
import 'easy/58.length_of_last_word.test.dart' as length_of_last_word;
import 'easy/66.plus_one.test.dart' as plus_one;
import 'easy/67.add_binary.test.dart' as add_binary;
import 'easy/69.sqrt_x.test.dart' as sqrt_x;
import 'easy/70.climbing_stairs.test.dart' as climbing_stairs;
import 'easy/83.remove_duplicates_from_sorted_list.test.dart' as remove_duplicates_from_sorted_list;
import 'easy/88.merge_sorted_array.test.dart' as merge_sorted_array;
import 'easy/9.palindrome_number.test.dart' as palindrome_number;
import 'easy/94.binary_tree_inorder_traversal.test.dart' as binary_tree_inorder_traversal;
import 'medium/131.palindrome_partitioning.test.dart' as palindrome_partitioning;
import 'medium/22.generate_parentheses.test.dart' as generate_parentheses;
import 'medium/3.longest_substring_without_repeating_characters.test.dart'
    as longest_substring_without_repeating_characters;
import 'medium/424.longest_repeating_character_replacement.test.dart' as longest_repeating_character_replacement;
import 'medium/49.group_anagrams.test.dart' as group_anagrams;
import 'medium/5.longest_palindromic_substring.test.dart' as longest_palindromic_substring;
import 'medium/516.longest_palindromic_subsequence.test.dart' as longest_palindromic_subsequence;
import 'medium/560.subarray_sum_equals_k.test.dart' as subarray_sum_equals_k;
import 'medium/647.palindromic_substrings.test.dart' as palindromic_substrings;
import 'medium/8.string_to_integer_atoi.test.dart' as string_to_integer_atoi;
import 'medium/912.sort_an_array.test.dart' as sort_an_array;

void main() {
  group('Solution', () {
    two_sum.main();
    palindrome_number.main();
    roman_to_integer.main();
    longest_common_prefix.main();
    valid_parentheses.main();
    merge_two_sorted_lists.main();
    remove_duplicates_from_sorted_array.main();
    remove_element.main();
    find_the_index_of_the_first_occurrence_in_a_string.main();
    search_insert_position.main();
    length_of_last_word.main();
    plus_one.main();
    add_binary.main();
    sqrt_x.main();
    climbing_stairs.main();
    remove_duplicates_from_sorted_list.main();
    merge_sorted_array.main();
    binary_tree_inorder_traversal.main();
    same_tree.main();
    valid_palindrome.main();
    longest_substring_without_repeating_characters.main();
    longest_repeating_character_replacement.main();
    sort_an_array.main();
    element_appearing_more_than_25_percent_in_sorted_array.main();
    valid_anagram.main();
    group_anagrams.main();
    longest_palindromic_substring.main();
    palindromic_substrings.main();
    longest_palindromic_subsequence.main();
    string_to_integer_atoi.main();
    subarray_sum_equals_k.main();
    generate_parentheses.main();
    palindrome_partitioning.main();
  });
}
