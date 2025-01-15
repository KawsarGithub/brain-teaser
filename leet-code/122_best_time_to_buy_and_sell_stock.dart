class Solution {
  int maxProfit(List<int> prices) {
    int max = 0;
    int start = prices[0];

    for (int i = 1; i < prices.length; i++) {
      if (start < prices[i]) {
        max += prices[i] - start;
      }

      start = prices[i];
    }

    return max;
  }
}

void main() {
  Solution solution = Solution();

  List<int> prices = [7, 1, 5, 3, 6, 4];
  print(solution.maxProfit(prices));

  prices = [1, 2, 3, 4, 5];
  print(solution.maxProfit(prices));

  prices = [7, 6, 4, 3, 1];
  print(solution.maxProfit(prices));
}
