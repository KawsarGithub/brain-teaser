class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int j = 0;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[j]) {
        nums[++j] = nums[i];
      }
    }

    return j + 1;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 1, 2];
  int k = solution.removeDuplicates(nums);
  print('k = $k, Modified array: ${nums.sublist(0, k)}');

  nums = [0, 0, 1, 1, 2, 3, 3];
  k = solution.removeDuplicates(nums);
  print('k = $k, Modified array: ${nums.sublist(0, k)}');
}
