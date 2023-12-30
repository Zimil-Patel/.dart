//1. Wap to print 1 to N number.

import 'dart:io';

void main() {
  var n;

  stdout.write("Enter the value of n : ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) print(i);
}
