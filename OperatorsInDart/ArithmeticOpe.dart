//Arithmetic operators
import 'dart:io';

void main() {
  print('\nEnter value of a : ');
  int? a = int.parse(stdin.readLineSync()!);

  print('Enter value of b : ');
  int? b = int.parse(stdin.readLineSync()!);

  print("\nValues\na = $a, b = $b\n");
  print('a + b = ${(a + b)}'); //addition
  print('a - b = ${(a - b)}'); //subtraction
  print('a * b = ${(a * b)}'); //multiplication
  print('a / b = ${(a / b)}'); //division return float integer both
  print('a % b = ${(a % b)}'); //modulo
  print('a ~/ b = ${(a ~/ b)}'); //tilde slash return integer value
}
