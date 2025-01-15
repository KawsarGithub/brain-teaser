List<int> productExceptSelf(List<int> nums) {
  int count = nums.length;
  List<int> productSum = List.filled(count, 1); 

  int prefix = 1;
  for (int i = 0; i < count; i++) {
    productSum[i] = prefix; 
    prefix *= nums[i];  
  }

  int postfix = 1;
  for (int i = count - 1; i >= 0; i--) {
    productSum[i] *= postfix; 
    postfix *= nums[i];   
  }

  return productSum;
}

void main() {
  List<int> nums = [1, 2, 3, 4];
  List<int> result = productExceptSelf(nums);
  print(result); 
}
