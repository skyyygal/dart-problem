// Median of Two Sorted Arrays

void main() {
  List<int> nums1 = [1, 3];
  List<int> nums2 = [2, 4];
  print(findMedianSortedArrays(nums1, nums2));
}

double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  List arr = [...nums1, ...nums2];
  arr.sort();
  int mid = arr.length ~/ 2;

  if (arr.length % 2 == 0) {
    return (arr[mid - 1] + arr[mid]) / 2;
  } else {
    return arr[arr.length ~/ 2];
  }
}
