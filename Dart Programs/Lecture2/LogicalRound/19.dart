//19.Wap to to find and delete repeat elements in array.
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
      if (arr[j] == arr[i]) {
        arr.removeAt(j);
        length--;
        j--;
      }
    }
  }

  print("Updated Array : $arr\n");
}
