//4.WAP Using try catch block.

import 'values.dart';

void main() {
  print("\n\n- - - Program execution started - - -");

  Values values = Values()
    ..setValueofa()
    ..setValueofb();

  try {
    print(
        "\nDivision of ${values.geta()} / ${values.getb()} : ${values.geta() ~/ values.getb()}");
  } catch (e) {
    print(
        "\nException : $e\nYou can't divide ${values.geta()} by ${values.getb()}");
  } finally {
    print("\n- - - Program ended in finally block - - -\n");
  }
}
