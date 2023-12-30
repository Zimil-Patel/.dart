//Write a Dart program to concate list element
// value with hello.
// For exmple,
// input: [1, 2, 3]
// output: [1 hello, 2 hello, 3 hello]
import 'dart:io';

void main() {
  List list = [];
  var choice;

  stdout.write("\nDo you want to enter list element ? [y/n]: ");
  choice = stdin.readLineSync();

  //taking user inputs
  while (choice == 'y' || choice == 'Y') {
    stdout.write("\nEnter element of list: ");
    list.add(stdin.readLineSync());

    stdout.write("\nDo you want to add another list element ? [y/n]: ");
    choice = stdin.readLineSync();
  }

  //concating all list elements with string "Hello"
  for (var i = 0; i < list.length; i++) {
    list[i] = "${list[i]} Hello";
  }

  //printing list all elemnts
  print("\nUpdated list = $list\n\n");
}
