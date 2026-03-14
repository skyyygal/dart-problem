import 'dart:io';

void main() {
  stdout.write("Enter n: ");
  String? input = stdin.readLineSync();
  int? n = int.tryParse(input!);

  int i = 1;

  print("The number you entered is: $n");

  while (i <= 10) {
    int product = n! * i;

    print("$n * $i = $product");
    i++;
  }
}
