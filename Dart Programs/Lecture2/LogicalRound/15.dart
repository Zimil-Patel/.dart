//15.Wap to Insert, Delete & Update operations the element into array.

import 'dart:io';

void main() {
  List arr = [];
  var arrSize = 5;
  var num;
  var choice = 0;

  print("> - - - Enter 5 elements of array - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter value of arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  printArray(arr);

  print("1. Insert");
  print("2. Update");
  print("3. Delete");
  print("4. Exit");
  stdout.write("Enter your choice [1/2/3/4]");
}

void printArray(var arr) {
  print("Array : $arr");
}
