//17.Wap to change 9 to 0 in array..

import 'dart:io';

void main() {
  List arr = [];

  print("> - - - Enter 5 elements of array - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write(">> Enter value of arr[$i] : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  print("Current Array $arr");

  for (int i = 0; i < 5; i++) {
    if (arr[i] == 9) arr[i] = 0;
  }

  print("Updated Array $arr");
}
