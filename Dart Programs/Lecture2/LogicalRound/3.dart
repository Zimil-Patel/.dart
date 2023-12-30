//Wap print all odd no into 1 to N.

import 'dart:io';

void main() {
  var n;

  stdout.write("Enter the value of n : ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) if (i % 2 != 0) print(i);
}
