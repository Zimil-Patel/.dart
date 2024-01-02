//11.Wap print fibonacci series.
import 'dart:io';

void main() {
  var n, fact = 0;

  stdout.write("\nEnter the Number : ");
  n = int.parse(stdin.readLineSync()!);

  print("Factorial of $n : ");
  for (int i = n; i >= 1; i--) {
    stdout.write("$i + ");
    fact += i;
    if (i == 1) {
      stdout.write("0 = $fact");
    }
  }
}
