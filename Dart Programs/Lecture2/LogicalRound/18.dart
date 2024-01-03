//18.Wap to to find frequency of each elements in array.

import 'dart:io';

void main() {
  List arr = [];
  int length = 7;
  int freq = 0;
  bool isRepeat = false;

  print("> - - - Enter $length elements of array - - - <");

  for (int i = 0; i < length; i++) {
    stdout.write(">> Enter value of arr[$i] : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  print("\nCurrent Array $arr\n");

  for (int i = 0; i < length; i++) {
    freq = 0;
    freq++;
    isRepeat = false;
    for (int j = 0; j < length; j++) {
      if (i == j)
        continue;
      else if (arr[i] == arr[j]) {
        if (j < i) isRepeat = true;
        freq++;
      }
    }

    if (isRepeat)
      continue;
    else
      print("FrequencyOf(${arr[i]}) = $freq");
  }
}
