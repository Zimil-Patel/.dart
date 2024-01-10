//Write a Dart program to find largest number in an array.

import 'dart:io';

void main() {
  List arr = List.empty(growable: true);

  print("> - - - Enter 5 elements of array list - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write("arr[${i}] : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  int max = 0;

  arr.forEach((element) => {if (element > max) max = element});

  print("\nMax Element of Array List : $max\n");
}
