class Solution {
  bool isPalindrome(int x) {
    if ((x > 0 && x % 10 != 0) || x == 0) {
      int reversed = 0;

      while (x > reversed) {
        reversed = reversed * 10 + x % 10;
        x ~/= 10;
      }

      return x == reversed || x == reversed ~/ 10;
    }

    return false;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.isPalindrome(121));
  print(solution.isPalindrome(-121));
  print(solution.isPalindrome(10));
  print(solution.isPalindrome(0));
}
