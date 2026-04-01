import 'dart:io';
/*
1
22
333
4444*/

void main() {
  int n = 4;
  for (int i = 1; i <= n; i++) {
    int num = i;
    for (int j = 1; j <= i; j++) {
      stdout.write("$num ");
    }
    print("");
  }
}
