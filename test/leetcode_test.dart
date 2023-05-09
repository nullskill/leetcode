import 'package:test/test.dart';

import 'easy/1.two_sum.dart' as two_sum;
import 'easy/13.roman_to_integer.dart' as roman_to_integer;
import 'easy/9.palindrome_number.dart' as palindrome_number;

void main() {
  group('solution', () {
    two_sum.main();
    palindrome_number.main();
    roman_to_integer.main();
  });
}
