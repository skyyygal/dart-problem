// print the element of the following list.
//   List list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

void main() {
  int x = 36;
  List list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  for (int i = 0; i < list.length; i++) {
    if (list[i] == x) {
      print("Found at index $i");
      // print(list[i]);
    }
    print(list[i]);
  }
}
