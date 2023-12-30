/*
Write a Dart program to create a list which
contains all Indian states.
Add all indian states in list by user input.
After that print all states using any type of loop.
*/
import 'dart:io';

void main() {
  List list = [];
  var choice;

  stdout.write("\nDo you want to enter State? [y/n]: ");
  choice = stdin.readLineSync();

  //taking user inputs
  while (choice == 'y' || choice == 'Y') {
    stdout.write("\nEnter state: ");
    list.add(stdin.readLineSync());

    stdout.write("\nDo you want to add another state ? [y/n]: ");
    choice = stdin.readLineSync();
  }

  //printing list all state using for in loop
  print("\n> - - - State list of india - - - <\n");
  for (var i in list) {
    stdout.write(i);
    if (i != list.last) stdout.write(", ");
  }

  print("\n\n");
}
