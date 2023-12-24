import 'dart:io';

void main() {
  var c;
  int choice;
  do {
    print("\n1. Print Hello\n2. Print Javatpoint\n3. Exit\n");
    print("Enter choice");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Hello");
        break;
      case 2:
        print("Javatpoint");
        break;
      case 3:
        exit(0);

      default:
        print("please enter valid choice");
    }
    print("do you want to enter more?[y/n] : ");
    c = stdin.readLineSync();
  } while (c == 'y');
}
