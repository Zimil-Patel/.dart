//2. Write a Dart Class which illustrates the use of cascade operator.

import 'FeetInch.dart';
import 'dart:io';

void main() {
  late int feet, inches;

  stdout.write("\nEnter Feet : ");
  feet = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Inches : ");
  inches = int.parse(stdin.readLineSync()!);

  FeetInch fi = FeetInch();

  //example of cascade operator in dart
  fi
    ..setFeetInch(feet: feet, inches: inches)
    ..getFeetInches();
}
