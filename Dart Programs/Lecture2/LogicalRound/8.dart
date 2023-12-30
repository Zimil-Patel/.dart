//8. Wap to sum of first and last digits in a number.
import 'dart:io';

void main() {
  int n;
  int firstDigit = 0, lastDigit = 0;
  int sum = 0, count = 0, temp;

  stdout.write("Enter Number : ");
  n = int.parse(stdin.readLineSync()!);

  while (n != 0) {
    count++;
    temp = n % 10;
    if (count == 1) firstDigit = temp;
    n ~/= 10;
    if (n == 0) lastDigit = temp;
  }

  sum = firstDigit + lastDigit;

  print("\nNumber of digit : $sum\n");
}
