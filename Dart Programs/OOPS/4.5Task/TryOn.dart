//1.WAP Using a try-on block in the dart.

import 'values.dart';

void main() {
  Values values = Values()
    ..setValueofa()
    ..setValueofb();

  try {
    print("Division of ${values.a} / ${values.b} : ${values.a ~/ values.b}");
  } on IntegerDivisionByZeroException {
    print("You can't divide ${values.a} by ${values.b}");
  }
}
