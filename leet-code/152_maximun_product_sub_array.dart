int maxProduct(List<int> nums) {
  double maxProduct = nums[0].toDouble(); 

  double currMax = 1.0;
  double currMin = 1.0;
  double prevMax = 1.0;
  double prevMin = 1.0;

  for (int i = 0; i < nums.length; i++) {
    double num = nums[i].toDouble();

    if (num >= 0) {
      currMax = num > num * prevMax ? num : num * prevMax;
      currMin = num < num * prevMin ? num : num * prevMin;
    } else {
      currMax = num > num * prevMin ? num : num * prevMin;
      currMin = num < num * prevMax ? num : num * prevMax;
    }

    prevMax = currMax;
    prevMin = currMin;

    maxProduct = maxProduct > currMax ? maxProduct : currMax;
  }

  return maxProduct.toInt();
}

void main() {
  List<int> nums = [2, 3, -2, 4];
  int result = maxProduct(nums);
  print(result); 
}
