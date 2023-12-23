//Arithmetic operators
import 'dart:io';

void main() {
  var a, b;

  print('\nEnter value of a : ');
  a = int.parse(stdin.readLineSync()!);

  print('Enter value of b : ');
  b = int.parse(stdin.readLineSync()!);

  print("\nValues\na = $a \nb = $b\n");
  print('\na + b = ${(a + b)}'); //addition
}
