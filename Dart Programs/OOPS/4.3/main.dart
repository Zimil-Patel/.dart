//Write a Dart Class which convert given distance in appropriate feet and inches.
//e.g. Input: 5 feet and 15 inch
//Output: 6 feet and 3 inch

import 'FeetInch.dart';
import 'dart:io';

void main() {
  late int feet, inches;

  stdout.write("\nEnter Feet : ");
  feet = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Inches : ");
  inches = int.parse(stdin.readLineSync()!);

  FeetInch fi = FeetInch();
  fi
    ..setFeetInch(feet: feet, inches: inches)
    ..getFeetInches();
}
