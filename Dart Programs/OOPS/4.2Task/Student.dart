//1. WAP to create a class for student to get and print details of N students. (with use of array of objects)

import 'dart:io';

class Student {
  int? rollNo, age;
  String? fisrtName, lastName;
  setter() {
    stdout.write("\Enter roll number : ");
    rollNo = int.parse(stdin.readLineSync()!);
    stdout.write("Enter firstName : ");
    fisrtName = stdin.readLineSync()!;
    stdout.write("Enter lastName : ");
    lastName = stdin.readLineSync()!;
    stdout.write("Enter age : ");
    age = int.parse(stdin.readLineSync()!);
  }

  getter() {
    print("\nRoll No. : $rollNo");
    print("First Name : $fisrtName");
    print("Last Name : $lastName");
    print("Age : $age\n");
  }
}

void main() {
  List studentList = List.empty(growable: true);
  stdout.write(">> - - - Enter student Details - - - <<");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    print("\n>> Student ${i + 1} : ");
    Student student = Student();
    student.setter();
    studentList.add(student);
  }
}
