void main() {
  List arr = [5, 3, 8, 1, 2];
  selectionSort(arr);
}

void selectionSort(List arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i; // pehle assume karo i hi minimum hai

    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j; //  swap mat karo, sirf index yaad rakho
      }
    }
    // for (int i = 0; i < n - 1; i++) {
    // for (int j = i + 1; j < n; j++) {
    // if (arr[j] < arr[i]) {
    // int temp = arr[j];
    // arr[j] = arr[i];
    // arr[i] = temp;
    // }
    // }
  }
  print(arr);
}
