//print odd number

import 'dart:io';

void main() {
  var n;

  print("Enter n : ");
  n = int.parse(stdin.readLineSync()!);

  var i = 1;

  while (i < n) {
    if (!(i % 2 == 0)) print(i);
    i++;
  }
}
