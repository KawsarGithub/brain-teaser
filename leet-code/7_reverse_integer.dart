class Solution {
  int reverse(int x) {
    int result = 0;
    bool isNegative = false;

    if (x < 0) {
      isNegative = true;
      x = x.abs();
    }

    while (x != 0) {
      int lastDigit = x % 10;
      x ~/= 10;

      if (result > (1 << 31) ~/ 10 ||
          (result == (1 << 31) ~/ 10 && lastDigit > 7)) {
        return 0;
      }
      if (result < -(1 << 31) ~/ 10 ||
          (result == -(1 << 31) ~/ 10 && lastDigit < -8)) {
        return 0;
      }

      result = result * 10 + lastDigit;
    }

    return isNegative ? result * -1 : result;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.reverse(123));
  print(solution.reverse(-123));
  print(solution.reverse(120));
  print(solution.reverse(1534236469));
}
