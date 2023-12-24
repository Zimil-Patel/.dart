//find max out of 3
import 'dart:io';

void main() {
  var a, b, c;

  print("Enter a : ");
  a = int.parse(stdin.readLineSync()!);
  print("Enter b : ");
  b = int.parse(stdin.readLineSync()!);
  print("Enter c : ");
  c = int.parse(stdin.readLineSync()!);

  if (a > b && a > c)
    print("a($a) is Max");
  else if (b > a && b > c)
    print("b($b) is max");
  else
    print("c($c) is max");
}
