//7. Wap to count number of digits in a number.
import 'dart:io';

void main() {
  int n;
  int count = 0;

  stdout.write("Enter Number : ");
  n = int.parse(stdin.readLineSync()!);

  while (n != 0) {
    count++;
    n ~/= 10;
  }

  print("\nNumber of digit : $count\n");
}
