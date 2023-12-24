//print day according number
import 'dart:io';

void main() {
  var choice;

  print("Enter choice(int) between 1<=choice<=7 : ");
  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      {
        print("Monday");
      }
      break;
    case 2:
      {
        print("Tuesday");
      }
      break;
    case 3:
      {
        print("Wednesday");
      }
      break;
    case 4:
      {
        print("Thursday");
      }
      break;
    case 5:
      {
        print("Friday");
      }
      break;
    case 6:
      {
        print("Saturday");
      }
      break;
    case 7:
      {
        print("Sunday");
      }
      break;
  }
}
