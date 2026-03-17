void main() {
  List<int> arr = [3, 1, 5, 2, 4];
  chocolateDistribution();
}

chocolateDistribution() {
  List<int> arr = [3, 1, 5, 2, 4];
  arr.sort();
  int m = 3;
  int minDiff = arr[m - 1] - arr[0];
  for (int i = 0; i < arr.length - m; i++) {
    int diff = arr[i + m - 1] - arr[i];
    // print(diff);
    if (minDiff > diff) {
      minDiff = diff;
    }
  }
  print(minDiff);
}
