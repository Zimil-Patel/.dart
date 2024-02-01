import 'dart:io';

class Values {
  late int a, b;
  late int age;

  setValueofa() {
    stdout.write("\nEnter value of a : ");
    this.a = int.parse(stdin.readLineSync()!);
  }

  setValueofb() {
    stdout.write("Enter value of b : ");
    this.b = int.parse(stdin.readLineSync()!);
  }

  setValueofage() {
    stdout.write("\nEnter your age for vote : ");
    this.age = int.parse(stdin.readLineSync()!);
  }

  geta() => a;
  getb() => b;
  getAge() => age;
}
