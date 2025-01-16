class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    int len1 = nums1.length;
    int len2 = nums2.length;
    List<int> merged = List<int>.filled(len1 + len2, 0);
    int firstIndex = 0, secondIndex = 0, k = 0;

    while (firstIndex < len1 && secondIndex < len2) {
      if (nums1[firstIndex] < nums2[secondIndex]) {
        merged[k++] = nums1[firstIndex++];
      } else {
        merged[k++] = nums2[secondIndex++];
      }
    }

    while (firstIndex < len1) {
      merged[k++] = nums1[firstIndex++];
    }

    while (secondIndex < len2) {
      merged[k++] = nums2[secondIndex++];
    }

    double median = 0;
    int finalLen = merged.length;

    if (finalLen % 2 == 0) {
      int medianIndex = finalLen ~/ 2;
      median = (merged[medianIndex - 1] + merged[medianIndex]) / 2;
    } else {
      int medianIndex = finalLen ~/ 2;
      median = merged[medianIndex].toDouble();
    }

    return median;
  }
}

void main() {
  Solution solution = Solution();

  // Example usage
  List<int> nums1 = [1, 3];
  List<int> nums2 = [2];
  print(solution.findMedianSortedArrays(nums1, nums2)); // Output: 2.0

  nums1 = [1, 2];
  nums2 = [3, 4];
  print(solution.findMedianSortedArrays(nums1, nums2)); // Output: 2.5
}
