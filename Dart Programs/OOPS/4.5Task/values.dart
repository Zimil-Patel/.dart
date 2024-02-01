import 'dart:io';

class Values {
  late int _a, _b;
  late int _age;

  setValueofa() {
    stdout.write("\nEnter value of a : ");
    this._a = int.parse(stdin.readLineSync()!);
  }

  setValueofb() {
    stdout.write("Enter value of b : ");
    this._b = int.parse(stdin.readLineSync()!);
  }

  setValueofage() {
    stdout.write("\nEnter your age for vote : ");
    this._age = int.parse(stdin.readLineSync()!);
  }

  geta() => _a;
  getb() => _b;
  getAge() => _age;
}
