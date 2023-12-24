//Conditonal operator close to if else
// ?:, ??
import 'dart:io';

void main() {
  var age;
  var tempAge, defAge = 18;
  print("Enter age : ");
  age = int.parse(stdin.readLineSync()!);

  tempAge = null;

  print(age > 18 ? 'You are eligible' : 'You are not eligible'); // ?:
  print(tempAge ?? defAge); // ??
  // in above example if tempAge is not null then print tempAge else print defalaut age
}
