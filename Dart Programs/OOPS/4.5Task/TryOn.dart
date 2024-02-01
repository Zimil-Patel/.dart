//1.WAP Using a try-on block in the dart.

import 'values.dart';

void main() {
  Values values = Values()
    ..setValueofa()
    ..setValueofb();

  try {
    print(
        "\nDivision of ${values.geta()} / ${values.getb()} : ${values.geta() ~/ values.getb()}");
  } on IntegerDivisionByZeroException {
    print(
        "\nException : You can't divide ${values.geta()} by ${values.getb()}\n");
  }
}
