//5. Wap to calculate factorial of a number.
import 'dart:io';

void main() {
  var n, fact = 1;

  stdout.write("\nEnter the Number : ");
  n = int.parse(stdin.readLineSync()!);

  print("Factorial of $n : ");
  for (int i = n; i >= 1; i--) {
    stdout.write("$i x ");
    fact *= i;
    if (i == 1) {
      stdout.write("1 = $fact");
    }
  }
}
