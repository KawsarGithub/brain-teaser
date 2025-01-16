int subarraySum(List<int> nums, int k) {
  int pSum = 0;
  int count = 0;

  Map<int, int> psumMap = {0: 1};

  for (int num in nums) {
    pSum += num;

    if (psumMap.containsKey(pSum - k)) {
      count += psumMap[pSum - k]!;
    }

    psumMap[pSum] = (psumMap[pSum] ?? 0) + 1;
  }

  return count;
}

void main() {
  List<int> nums = [1, 2, 3];
  int k = 3;

  print(subarraySum(nums, k));
}
