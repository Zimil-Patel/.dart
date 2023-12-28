import 'dart:io';

void main(){

  int n;

  stdout.write("Enter Number : ");
  n = int.parse(stdin.readLineSync()!);

  print("Cube of $n : ${n * n * n}");

}