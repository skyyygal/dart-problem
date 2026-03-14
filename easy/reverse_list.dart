void main() {
  List arr = [4, 5, 1, 2, 6, 7];
  revArray(arr);
}

void revArray(List arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    print(arr[i]);
    int temp = arr[n - 1 - i];
    arr[n - 1 - i] = arr[i];
    arr[i] = temp;
  }
  print(arr);
}
