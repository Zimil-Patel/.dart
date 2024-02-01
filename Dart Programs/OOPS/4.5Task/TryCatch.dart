//4.WAP Using try catch block.

import 'values.dart';

void main() {
  print("\n\n- - - Program execution started - - -");

  Values values = Values()
    ..setValueofa()
    ..setValueofb();

  try {
    print("\nDivision of ${values.a} / ${values.b} : ${values.a ~/ values.b}");
  } catch (e) {
    print("\nException : $e\nYou can't divide ${values.a} by ${values.b}");
  } finally {
    print("\n- - - Program ended in finally block - - -\n");
  }
}
