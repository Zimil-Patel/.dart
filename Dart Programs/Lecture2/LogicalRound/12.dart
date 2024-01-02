//12.Wap to print all negative elements in an array.

import 'dart:io';

void main() {
  List arr = [];
  var num;

  print("> - - - Enter 5 elements of array - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter value of arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  stdout.write("\nNegative number in given array are : ");

  for (int i = 0; i < 5; i++) {
    if (arr[i] < 0) stdout.write("${arr[i]} ");
  }

  print("");
}
