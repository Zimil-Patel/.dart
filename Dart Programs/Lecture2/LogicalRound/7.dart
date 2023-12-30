//7. Wap to count number of digits in a number.
import 'dart:io';

void main() {
  double n;
  int count = 0;

  stdout.write("Enter Number : ");
  n = double.parse(stdin.readLineSync()!);

  while (n != 0) {
    count++;
    n /= 10;
  }

  print("\nNumber of digit : $count\n\n");
}
