import 'package:test/test.dart';

import 'easy/1.two_sum.dart' as two_sum;
import 'easy/9.palindrome_number.dart' as palindrome_number;

void main() {
  group('solutions', () {
    two_sum.main();
    palindrome_number.main();
  });
}
