import 'dart:io';

void main() {
  var arithmetic = new Arithmetic()
    ..Addition()
    ..Subtraction(50, 7);

  print("Multiplication = ${arithmetic.Multiplication()}\n");

  print("Division of (10) / (2.5) = ${arithmetic.Division(10, 2.5)}\n");
}

class Arithmetic {
  //constructor of arithmetic class
  Arithmetic() {
    print("\nWelcome to Airthmetic class\n");
  }

  //function with no parameter and no retun type
  void Addition() {
    var num1, num2;
    print("Enter num1 : ");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter num1 2 ");
    num2 = int.parse(stdin.readLineSync()!);

    print("Addition of ($num1) + ($num2) = ${num1 + num2}\n");
  }

  //function with parameter and no return type
  void Subtraction(var num1, var num2) {
    print("Subtraction of ($num1) - ($num2) = ${num1 - num2}\n");
  }

  //function with no parameter but with return type
  int Multiplication() {
    var num1, num2;
    print("Enter num1 : ");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter num1 2 ");
    num2 = int.parse(stdin.readLineSync()!);

    return num1 * num2;
  }

  //function with parameter and with return type
  double Division(var num1, var num2) {
    return num1 / num2;
  }
}
