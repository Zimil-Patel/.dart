//21.Wap to set array in descending order.

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

  for (int i = 0; i < length; i++) {
    for (int j = i + 1; j < length; j++) {
      if (arr[i] < arr[j]) {
        arr[i] = arr[i] + arr[j];
        arr[j] = arr[i] - arr[j];
        arr[i] = arr[i] - arr[j];
      }
    }
  }

  print("Updated Array(Descending Order)\n$arr\n");
}
