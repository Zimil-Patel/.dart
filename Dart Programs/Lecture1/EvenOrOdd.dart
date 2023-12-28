import 'dart:io';

void main(){

  int n;

  stdout.write("Enter Number : ");
  n = int.parse(stdin.readLineSync()!);

  if(n % 2 == 0)
    print("$n is Even");
  else
    print("$n is Odd");

}