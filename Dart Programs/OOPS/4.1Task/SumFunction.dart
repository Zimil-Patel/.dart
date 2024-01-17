//5. Write a Dart Program to illustrate the use of
//positional parameters by creating a function which returns the sum of passed parameters.

void main() {
  print('\n> - - - Get success percentage - - - <\n');

  print('Sum: ${getSum(10, 20, 30, 40, 50)}\n');
}

int getSum(int num1, int num2, int num3, int num4, int num5) =>
    num1 + num2 + num3 + num4 + num5;
