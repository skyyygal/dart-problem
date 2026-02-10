//  print the elements of the following list using while
//  [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

void main() {
  List list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List heros = ["iron man", "thor", "spider man", "batman"];

  var index = 0;
  // int len = list.length;
  while (index < heros.length) {
    print(heros[index]);
    index++;
  }
  index = 0;
  while (index <= list.length - 1) {
    print(list[index]);
    index += 1;
  }
}
