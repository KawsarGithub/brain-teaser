class Solution {
  int majorityElement(List<int> nums) {
    final Map<int, int> numMap = {};

    for (var num in nums) {
      numMap[num] = (numMap[num] ?? 0) + 1;
    }

    int maxVal = 0;
    int maxDuplicate = 0;
    numMap.forEach((key, value) {
      if (value > maxVal) {
        maxVal = value;
        maxDuplicate = key;
      }
    });

    return maxDuplicate;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [3, 2, 3];
  print(solution.majorityElement(nums));

  nums = [2, 2, 1, 1, 1, 2, 2];
  print(solution.majorityElement(nums));
}
