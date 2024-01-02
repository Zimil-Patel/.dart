//13.Wap to find largest number in array.

import 'dart:io';

void main() {
  List arr = [];
  var num;
  var max = 0;

  print("> - - - Enter 5 elements of array - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter value of arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  for (int i = 0; i < 5; i++) {
    if (arr[i] > max) max = arr[i];
  }

  print("\nMax number in array is : $max\n");
}
