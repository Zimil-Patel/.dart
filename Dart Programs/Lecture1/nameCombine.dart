import 'dart:io';

void main(){

  String firstName;
  String lastName;

  stdout.write("Enter First Name : ");
  firstName = stdin.readLineSync()!;

  stdout.write("Enter Last Name : ");
  lastName = stdin.readLineSync()!;

  stdout.write("Full Name : $firstName $lastName");

}