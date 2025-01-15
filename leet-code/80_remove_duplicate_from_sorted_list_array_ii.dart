class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int k = 1;
    int count = 1;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == nums[i - 1] && count < 2) {
        nums[k] = nums[i];
        k++;
        count++;
      } else if (nums[i] != nums[i - 1]) {
        count = 1;
        nums[k] = nums[i];
        k++;
      }
    }

    return k;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 1, 1, 2, 2, 3];
  int k = solution.removeDuplicates(nums);
  print('k = $k, Modified array: ${nums.sublist(0, k)}');

  nums = [0, 0, 1, 1, 1, 1, 2, 3, 3];
  k = solution.removeDuplicates(nums);
  print('k = $k, Modified array: ${nums.sublist(0, k)}');
}
