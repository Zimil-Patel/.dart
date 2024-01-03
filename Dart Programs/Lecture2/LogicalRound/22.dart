//22.WAP to print prime no in array.

import 'dart:io';

void main() {
  List arr = [];
  int length = 7;

  print("> - - - Enter $length elements of array - - - <");

  for (int i = 0; i < length; i++) {
    stdout.write(">> Enter value of arr[$i] : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  print("\nCurrent Array $arr\n");

  print("Updated Array(Prime numbers)");

  for (int i = 0; i < length; i++) {
    if (checkifPrime(arr[i])) print(arr[i]);
    ;
  }
}

bool checkifPrime(int num) {
  bool flag = true;
  if (num == 1 || num == 0) return false;
  for (int i = 2; i < num; i++) {
    if (num % i == 0) flag = false;
  }
  return flag;
}
