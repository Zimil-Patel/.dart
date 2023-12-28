import 'dart:io';

void main(){

  int from, to;

  stdout.write("Enter Number from : ");
  from = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Number to : ");
  to = int.parse(stdin.readLineSync()!);

  for(int i = from; i <= to; i++){

    stdout.write("\n>> - - - Table of $i - - - <<\n\n");

    for (int j = 1; j <= 10; j++){

      print("$i * $j = ${i * j}");

    }

  }



}