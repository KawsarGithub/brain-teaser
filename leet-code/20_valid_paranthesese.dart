class Solution {
  bool isValid(String s) {
    final List<String> stack = [];

    for (final char in s.split('')) {
      if (char == '(') {
        stack.add(')');
      } else if (char == '{') {
        stack.add('}');
      } else if (char == '[') {
        stack.add(']');
      } else if (stack.isEmpty || stack.removeLast() != char) {
        return false;
      }
    }

    return stack.isEmpty;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.isValid('()'));
  print(solution.isValid('()[]{}'));
  print(solution.isValid('(]'));
  print(solution.isValid('([)]'));
  print(solution.isValid('{[]}'));
}
