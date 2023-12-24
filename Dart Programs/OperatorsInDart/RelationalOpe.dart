//Relational Operators
// <, >, <=, >=, ==, !=

import 'dart:io';

void main() {
  var a, b;

  print("Enter a : ");
  a = int.parse(stdin.readLineSync()!);
  print("Enter b : ");
  b = int.parse(stdin.readLineSync()!);

  print("is a == b : ${a == b}"); // ==
  print("is a != b : ${a != b}"); // !=
  print("is a >= b : ${a >= b}"); // >=
  print("is a <= b : ${a <= b}"); // <=
  print("is a > b : ${a > b}"); // >
  print("is a < b : ${a < b}"); // <
}
