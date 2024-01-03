//30.C program to find factorial of number using recursion.

import 'dart:io';

void main() {
  int num, fact = 1;

  stdout.write("Enter number : ");
  num = int.parse(stdin.readLineSync()!);

  print("Factorial of $num");

  fact = getFactorial(num);

  stdout.write("1 : $fact");
}

int getFactorial(int num) {
  if (num == 1) return 1;

  stdout.write("$num * ");

  return num * getFactorial(num - 1);
}
