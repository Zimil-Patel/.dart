/*
Write a Dart Program to print all unique elements
from a List.

Elements may be  redundant while entring into
a List. Usr can only enter elements of String
datatype.
*/

import 'dart:io';

void main() {
  List strList = [];

  print("\n> - - Enter 10 list elements - - <\n");

  for (int i = 0; i < 10; i++) {
    stdout.write("Enter element ${i + 1} : ");
    strList.add(stdin.readLineSync()!);
  }

  print("\n> - - Entered List - - <\n");
  strList.forEach((element) {
    print(element);
  });

  bool isRepeating = false;

  //printing only unique elements of list
  print("\n> - - List with unique elements only - - <\n");

  for (int i = 0; i < strList.length; i++) {
    isRepeating = false;
    for (int j = i - 1; j >= 0; j--) {
      if (strList[i] == strList[j]) {
        isRepeating = true;
      }
    }

    if (isRepeating)
      continue;
    else
      print(strList[i]);
  }

  print("\n");
}
