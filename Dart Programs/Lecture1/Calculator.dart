import 'dart:io';

void main(){

  double num1, num2;
  int choice = 1;

  stdout.write("\n\n[0 for exit \n1 for +\n2 for -\n3 for *\n4 for /\n5 for %]\nEnter your choice : ");
  choice = int.parse(stdin.readLineSync()!);

  while(choice != 0){

    stdout.write("Enter num1 : ");
    num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter num2 : ");
    num2 = double.parse(stdin.readLineSync()!);

    switch(choice){


      case 1:{
        stdout.write("\Addition $num1 + $num2 : ${num1 + num2}");
      }
      break;

      case 2:{
        stdout.write("\Subtraction $num1 - $num2 : ${num1 - num2}");
      }
      break;

      case 3:{
        stdout.write("\Multiplication $num1 * $num2 : ${num1 * num2}");
      }
      break;

      case 4:{
        stdout.write("\Division $num1 / $num2 : ${num1 / num2}");
      }
      break;

      case 5:{
        stdout.write("\Modulo $num1 % $num2 : ${num1 % num2}");
      }
      break;

      case 0:{
        choice = 0;
        break;
      }

      default:
        print("Enter valid option!");

    }

    stdout.write("\n\n[0 for exit \n1 for +\n2 for -\n3 for *\n4 for /\n5 for %]\nEnter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

  }
 

}