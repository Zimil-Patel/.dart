import 'dart:io';

void main() {
  int i = 1;

  for (i = (1 * (i - 1) ~/ 2) + 1; i <= 10; i++) {
    for (int k = 1; k < i; k++) stdout.write(" -  ");

    for (int j = i; j <= 10; j++) {
      if (i <= 9)
        stdout.write(" $i  ");
      else
        stdout.write("$i  ");
    }
    print("");
  }
}
