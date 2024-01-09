import 'dart:io';

void main() {
  int i = 1;
  int temp;

  for (i = 1; i <= 10; i++) {
    temp = i;
    for (int k = 1; k < i; k++) stdout.write(" -  ");

    for (int j = i; j <= 10; j++) {
      if (temp <= 9)
        stdout.write(" ${temp++}  ");
      else
        stdout.write("${temp++}  ");
    }
    print("");
  }
}
