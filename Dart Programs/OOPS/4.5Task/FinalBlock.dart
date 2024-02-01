//3.WAP using final block.

import 'values.dart';

void main() {
  print("\n\n- - - Program execution started - - -");

  Values values = Values()
    ..setValueofa()
    ..setValueofb();

  try {
    print(
        "\nDivision of ${values.geta()} / ${values.getb()} : ${values.geta() ~/ values.getb()}");
  } on IntegerDivisionByZeroException {
    print(
        "\nException : You can't divide ${values.geta()} by ${values.getb()}");
  } finally {
    print("\n- - - Program ended in finally block - - -\n");
  }
}
