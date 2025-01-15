class Solution {
  bool canJump(List<int> nums) {
    int goal = nums.length - 1;

    for (int i = nums.length - 2; i >= 0; i--) {
      if (i + nums[i] >= goal) {
        goal = i;
      }
    }

    return goal == 0;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [2, 3, 1, 1, 4];
  print(solution.canJump(nums));

  nums = [3, 2, 1, 0, 4];
  print(solution.canJump(nums));
}
