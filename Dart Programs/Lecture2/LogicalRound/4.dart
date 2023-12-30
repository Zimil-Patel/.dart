//4. Wap to calculate 1 to N no sum.

import 'dart:io';

void main() {
  var n, sum = 0;

  stdout.write("\nEnter the value of n : ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) sum += i;

  print("Sum of 1 to $n : $sum\n\n");
}
