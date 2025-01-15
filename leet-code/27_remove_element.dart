class Solution {
  int removeElement(List<int> nums, int val) {
    int index = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[index] = nums[i];
        index++;
      }
    }

    return index;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [3, 2, 2, 3];
  int k = solution.removeElement(nums, 3);
  print('k = $k, Modified array: ${nums.sublist(0, k)}');

  nums = [0, 1, 2, 2, 3, 0, 4, 2];
  k = solution.removeElement(nums, 2);
  print('k = $k, Modified array: ${nums.sublist(0, k)}');
}
