List<int> runningSum(List<int> nums) {
  List<int> prefixSum = List.filled(nums.length, 0);
  prefixSum[0] = nums[0]; 

  for (int i = 1; i < nums.length; i++) {
    prefixSum[i] = prefixSum[i - 1] + nums[i]; 
  }

  return prefixSum;
}

void main() {
  List<int> nums = [1, 2, 3, 4];
  List<int> result = runningSum(nums);
  print(result); 
}
