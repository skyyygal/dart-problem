/*
[5, 3, 1]

i = 1, key = 3
j = i - 1 = 0

arr[j] = 5 > key = 3? Haan → arr[j+1] = arr[j] → [5, 5, 1]
j-- → j = -1 → rukk jao!
arr[j+1] = arr[0] = key = 3 → [3, 5, 1] ✅
i = 2, key = 1
j = i - 1 = 1

arr[j] = 5 > key = 1? Haan → arr[j+1] = arr[j] → [3, 5, 5]
j-- → j = 0

arr[j] = 3 > key = 1? Haan → arr[j+1] = arr[j] → [3, 3, 5]
j-- → j = -1 → rukk jao!
arr[j+1] = arr[0] = key = 1 → [1, 3, 5]
*/
void main() {
  List list = [3, 5, 8, 1, 2];
  insertionSort(list);
}

void insertionSort(List arr) {
  int n = arr.length;

  for (int i = 1; i < n; i++) {
    int key = arr[i]; // patta uthao
    int j = i - 1; // peeche se shuru

    while (j >= 0 && arr[j] > key) {
      // bada hai toh
      arr[j + 1] = arr[j]; // khiskao
      j--; // aur peeche jao
    }

    arr[j + 1] = key; // sahi jagah rakho
  }
  print(arr);
}
