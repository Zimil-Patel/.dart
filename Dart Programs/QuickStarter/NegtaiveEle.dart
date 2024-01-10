//Write a Dart program to to print all negative elements in an array

import 'dart:io';

void main() {
  List arr = List.empty(growable: true);

  print("> - - - Enter 5 elements of array list - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write("arr[${i}] : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  print("\n> - - - Array list after removing negative values - - - <\n");

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < 0) {
      arr.removeAt(i);
      i--;
    }
  }

  arr.forEach((element) {
    print(element);
  });

  print("");
}
