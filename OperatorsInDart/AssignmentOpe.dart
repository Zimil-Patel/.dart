//Assignment operators
// =, /=, *=, %=, +=, -=, ~/
import 'dart:io';

void main() {
  var a, b;

  print("Enter value of a : ");
  a = int.parse(stdin.readLineSync()!);

  print("Assigning a's vlaue to b\nnow,");
  b = a; // assignment operator '='

  print("b = $b");
  print("b += a so, b = ${b += a}"); // '+='
  print("b -= a so, b = ${b -= a}"); // '-='
  print("b /= a so, b = ${b /= a}"); // '/='
  print("b *= a so, b = ${b *= a}"); // '*='
  print("b ~/= a so, b = ${b ~/= a}"); // '~/='
}
