import 'dart:collection';

void main() {
  List<int> arr = [1, 2, 3, 1];
  // print(containsDupe(arr));
  print(HashSetCheck(arr));
}

bool containsDupe(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (arr[i] == arr[j]) {
        print("Contains Dupe");
        return true;
      }
    }
  }
  return false;
}

HashSet<int> set = HashSet();
bool HashSetCheck(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    if (set.contains(arr[i])) {
      return true;
    } else {
      set.add(arr[i]);
    }
  }
  return false;
}
