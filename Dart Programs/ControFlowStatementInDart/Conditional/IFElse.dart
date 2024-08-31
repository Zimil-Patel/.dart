import 'dart:io';

void main() {
  
  var age;

  print("Enter age : ");
  age = int.parse(stdin.readLineSync()!);

  if (age >= 18) {
    print("You are eligible for vote!");
  } else
    print("You are not eligible!");
  
}
