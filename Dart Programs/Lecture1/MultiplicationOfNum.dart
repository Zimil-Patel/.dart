import 'dart:io';

void main(){

  int num1, num2;

  stdout.write("Enter num1 : ");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num2 : ");
  num2 = int.parse(stdin.readLineSync()!);

  stdout.write("\nMultiplication : ${num1 * num2}\n\n");

}