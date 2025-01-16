class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final Map<int, int> map = {};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];

      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }

      map[nums[i]] = i;
    }

    throw Exception("No solution found");
  }
}

void main() {
  Solution solution = Solution();

  print(solution.twoSum([2, 7, 11, 15], 9));
  print(solution.twoSum([3, 2, 4], 6));
  print(solution.twoSum([3, 3], 6));
}
