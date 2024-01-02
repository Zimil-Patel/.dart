//14.Wap to find second largest number in array.

import 'dart:io';

void main() {
  List arr = [];
  var num;
  var largest = 0;
  var secondLargest = 0;

  print("> - - - Enter 5 elements of array - - - <");

  for (int i = 0; i < 5; i++) {
    stdout.write("Enter value of arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  for (int i = 0; i < 5; i++) {
    if (arr[i] > largest) {
      secondLargest = largest;
      largest = arr[i];
    }
  }

  print("\nLargest number in array is : $largest");
  print("Second Largest number in array is : $secondLargest\n");
}
