//Dart Type Test operator
// as, is, is!

import 'dart:io';

void main() {
  var a;

  print("Enter a : ");
  a = int.parse(stdin.readLineSync()!);

  print("a is int : ${a is int}"); // is int
  print("a is! String : ${a is! String}"); // is! String
  print("a is double : ${a is double}"); // is double
}
