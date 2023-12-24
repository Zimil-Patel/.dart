import 'dart:io';

void main() {
  var n;

  print("Enter n : ");
  n = int.parse(stdin.readLineSync()!);

  print("Even numbers are : ");

  for (var i = 1; i < n; i++) {
    if (i % 2 == 0) print(i);
  }
}
