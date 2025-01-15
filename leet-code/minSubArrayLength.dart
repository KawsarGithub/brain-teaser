int minSubArrayLen(int target, List<int> nums) {
  int n = nums.length;
  int ans = double.maxFinite.toInt();
  int sum = 0;
  int left = 0;

  for (int right = 0; right < n; right++) {
    sum += nums[right];

    while (sum >= target) {
      ans = (right - left + 1).clamp(0, ans);
      sum -= nums[left];
      left++;
    }
  }

  return ans == double.maxFinite.toInt() ? 0 : ans;
}

void main() {
  int target = 7;
  List<int> nums = [2, 3, 1, 2, 4, 3];
  int result = minSubArrayLen(target, nums);
  print(result);
}
