void main() {
  List<int> arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  // maxSubArray(arr);
  kadanesAlgo(arr);
}

int kadanesAlgo(List<int> arr) {
  int n = arr.length;
  int max = arr[0];
  int currArr = arr[0];
  for (int i = 1; i < n; i++) {
    if (currArr.isNegative) {
      currArr = arr[i];
    } else
      currArr = currArr + arr[i];
    if (max < currArr) {
      max = currArr;
    }
  }
  print(max);
  return max;
}

void maxSubArray(List<int> arr) {
  int n = arr.length;
  int max = arr[0];
  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      int sum = 0;

      for (int k = i; k <= j; k++) {
        var m = arr[k];
        sum = sum + m;
      }
      if (max < sum) {
        max = sum;
      }
    }
  }
  print(max);
}
