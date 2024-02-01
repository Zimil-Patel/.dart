//3.WAP using final block.

import 'values.dart';

void main() {
  print("\n\n- - - Program execution started - - -");

  Values values = Values()
    ..setValueofa()
    ..setValueofb();

  try {
    print("\nDivision of ${values.a} / ${values.b} : ${values.a ~/ values.b}");
  } on IntegerDivisionByZeroException {
    print("\nException : You can't divide ${values.a} by ${values.b}");
  } finally {
    print("\n- - - Program ended in finally block - - -\n");
  }
}
