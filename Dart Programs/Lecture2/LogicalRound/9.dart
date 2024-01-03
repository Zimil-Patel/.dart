//9. Wap to enter a number and check the no is prime or not?

import 'dart:io';

void main() {
  var num;

  stdout.write("Enter the number : ");
  num = int.parse(stdin.readLineSync()!);

  var flag = true;

  for (int i = 2; i < num; i++) {
    if (num % i == 0) flag = false;
  }

  if (flag)
    print("\nGiven number($num) is prime\n");
  else
    print("\nGiven number($num) is not prime\n");
}


