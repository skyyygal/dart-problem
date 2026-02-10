// search for a element in the list
//  [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
import 'dart:io';

void main() {
  List list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  int i = 0;

  stdout.write("Enter the number: ");
  String? input = stdin.readLineSync();
  int? x = int.tryParse(input!);

  while (i < list.length) {
    // print(list[i]);
    if (list[i] == x) {
      print("Found at index: $i");
    } else {
      print("Finding...");
    }
    i++;
  }
}

//  to break the loop, we have other types such as break and continue.
