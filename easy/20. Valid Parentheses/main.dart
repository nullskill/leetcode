/// We can check if a string contains valid brackets by using a stack data structure.
/// We can iterate through the string and push each opening bracket onto the stack.
/// When we encounter a closing bracket, we can check if it matches the top of the stack.
/// If it does, we can pop the top of the stack.
/// If it doesn’t match or if the stack is empty when we encounter a closing bracket,
/// then the string is not valid.
/// The time complexity of the function is `O(n)`

class Solution {
  bool isValid(String s) {
    final stack = <String>[];
    for (final char in s.split('')) {
      if (char == '(' || char == '{' || char == '[') {
        stack.add(char);
      } else if (char == ')' && (stack.isEmpty || stack.removeLast() != '(')) {
        return false;
      } else if (char == '}' && (stack.isEmpty || stack.removeLast() != '{')) {
        return false;
      } else if (char == ']' && (stack.isEmpty || stack.removeLast() != '[')) {
        return false;
      }
    }
    return stack.isEmpty;
  }
}

void main(List<String> args) {
  final x = '(]';

  final result = Solution().isValid(x);

  print(result);
}
