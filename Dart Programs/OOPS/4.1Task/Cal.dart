//3. Write a Dart Program to make a simple calculator functionality by
//creating various different functions with switch case.
import 'dart:io';

void main() {
  print("\n> - - - Calculator - - - <\n");

  var repeat = 'y';
  int a, b;

  while (repeat == 'y') {
    a = getValues('a');
    b = getValues('b');

    repeat = calculate(num1: a, num2: b);
  }
}

int getValues(var v) {
  stdout.write("Enter value of $v : ");
  return int.parse(stdin.readLineSync()!);
}

String calculate({required int num1, required int num2}) {
  var flag = 'y';
  int choice;
  stdout.write(
      '\nEnter 1 for addition\nEnter 2. for subtraction\nEnter 3. for multiplication\nEnter 4. for Divison\nEnter 5. for modulo\nEnter Operator :');
  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print('Addition $num1 + $num2: ${addition(num1, num2)}');
      break;

    case 2:
      print('Subtraction $num1 - $num2: ${subtraction(num1, num2)}');
      break;

    case 3:
      print('Multiplication $num1 * $num2: ${multiplication(num1, num2)}');
      break;

    case 4:
      print('Division $num1 / $num2: ${division(num1, num2)}');
      break;

    case 5:
      print('Modulo $num1 % $num2: ${muodulo(num1, num2)}');
      break;

    default:
      calculate(num1: num1, num2: num2);
  }

  stdout.write("\n\ndo you want to perform again ?[y/n] : ");
  flag = stdin.readLineSync()!;

  return flag;
}

int addition(int num1, int num2) => num1 + num2;
int subtraction(int num1, int num2) => num1 - num2;
int multiplication(int num1, int num2) => num1 * num2;
int division(int num1, int num2) => num1 ~/ num2;
int muodulo(int num1, int num2) => num1 % num2;
