class Solution {
  void rotate(List<int> nums, int k) {
    int n = nums.length;
    k = k % n;

    void reverse(List<int> arr, int start, int end) {
      while (start < end) {
        int temp = arr[start];
        arr[start] = arr[end];
        arr[end] = temp;
        start++;
        end--;
      }
    }

    reverse(nums, 0, n - 1);
    reverse(nums, 0, k - 1);
    reverse(nums, k, n - 1);
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  solution.rotate(nums, 3);
  print(nums);

  nums = [-1, -100, 3, 99];
  solution.rotate(nums, 2);
  print(nums);
}
