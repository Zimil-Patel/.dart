/*
Write a Dart program to Insert, Delete, Update and 
View operations on the elements in an array 
using menu-driven programming approach. 
*/

import 'dart:io';

void main() {
  List arr = List.empty(growable: true);
  var choice = 0;

  print("> - - - Enter 5 elements of array - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write(">> Enter value of arr[$i] : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  printArrayWithIndex(arr);

  while (true) {
    print("\n\n");
    print(" - - - - - - - - - - - - -");
    print("|\t1. Insert\t |");
    print("|\t2. Update\t |");
    print("|\t3. Delete\t |");
    print("|\t4. Exit  \t |");
    print(" - - - - - - - - - - - - -");
    stdout.write(">> Enter your choice [1/2/3/4] : ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        {
          arr = insertValue(arr);
        }
        break;
      case 2:
        {
          arr = updateValue(arr);
        }
        break;
      case 3:
        {
          arr = deleteValue(arr);
        }
        break;
      case 4:
        {
          exit(0);
        }
      default:
        {
          print("> - Enter valid option! - <");
        }
    }

    printArrayWithIndex(arr);
  }
}

void printArrayWithIndex(List arr) {
  print("\n\n> - - Array - - <");
  for (int i = 0; i < arr.length; i++) print("arr[$i] = ${arr[i]}");
}

//insert element into array
List insertValue(List arr) {
  stdout.write("\n>> Enter value to insert : ");
  arr.add(int.parse(stdin.readLineSync()!));
  print("> - Array Updated - <");
  return arr;
}

//update value  into array
List updateValue(List arr) {
  stdout.write("\n>> At which index you want to replace : ");
  int index = int.parse(stdin.readLineSync()!);
  if (index < arr.length) {
    stdout.write("\n>> Enter value to update : ");
    arr[index] = int.parse(stdin.readLineSync()!);
    print("> - Array Updated - <");
  } else {
    print("> - Invalid array index! - <");
  }
  return arr;
}

//delete value into array
List deleteValue(List arr) {
  stdout.write("\n>> At which index you want to delete value : ");
  int index = int.parse(stdin.readLineSync()!);
  if (index < arr.length) {
    arr.removeAt(index);
    print("> - Array Updated - <");
  } else {
    print("> - Invalid array index! - <");
  }
  return arr;
}
