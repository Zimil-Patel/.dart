//1. Write a Dart Program to create a function which returns a cube of given number.

import 'dart:io';

void main() {
  print('\n> - - Cube of Number - - - <');

  int num;
  var choice = 'y';

  while (choice == 'y') {
    stdout.write("\nEnter number : ");
    num = int.parse(stdin.readLineSync()!);

    print('Cube of number : ${getCube(num)}\n');

    stdout.write('Do you want to perform again [y/n]: ');
    choice = stdin.readLineSync()!;
  }
}

int getCube(int num) => num * num * num;
