//2. Write a Dart Program to create a function as
//expression which returns unique list of names by passing a list of names to that function.

import 'dart:io';

void main() {
  List names = List.empty(growable: true);

  print('\n> - - - Unique name list - - - <\n');

  stdout.write(">> Enter List names\n");

  for (int i = 0; i < 6; i++) {
    stdout.write("Enter name[${i + 1}] : ");
    names.add(stdin.readLineSync()!);
  }

  print("\nUnique List names : ${getList(names)}\n");
}

//this function removes duplicates and return list
List getList(List names) => names.toSet().toList();
