//2.WAP using FormatException example.

import 'values.dart';

void main() {
  print("\n\n- - - Program execution started - - -");

  Values values = Values()..setValueofage();

  try {
    checkAge(values.getAge());
    print("\nAge verified successfully");
  } catch (e) {
    print("\nException : $e\nAge Cannot be less than 18");
  } finally {
    print("\n- - - Program ended in finally block - - -\n");
  }
}

void checkAge(int age) {
  if (age < 18) {
    throw new FormatException();
  }
}
