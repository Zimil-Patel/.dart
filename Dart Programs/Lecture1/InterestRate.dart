import 'dart:io';

void main(){

  double principleAmt, time, rate;

  stdout.write("Enter Principle Amount : ");
  principleAmt = double.parse(stdin.readLineSync()!);

  stdout.write("Enter time : ");
  time = double.parse(stdin.readLineSync()!);

  stdout.write("Enter interest rate : ");
  rate = double.parse(stdin.readLineSync()!);

  print("\n\nSimple Interest : ${(principleAmt * time * rate) / 100}\n\n");

}