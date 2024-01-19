import 'dart:io';

class Railway {
  int? train_number;
  String? train_name, train_source, train_destination, train_time;
  static int choice = 0;

  static void getDash() {
    print("\n - - - - - - - - - - - - - - - - ");
    print("    1. Add Train Details");
    print("    2. View all Train Details");
    print("    3. Search Train Details");
    print("    4. exit");
    print("- - - - - - - - - - - - - - - - - \n");

    stdout.write("Enter your choice[1/2/3/4] : ");
    choice = int.parse(stdin.readLineSync()!);
  }

  setter() {
    stdout.write("\nenter the  Train Number : ");
    train_number = int.parse(stdin.readLineSync()!);
    stdout.write("enter the  Train Name : ");
    train_name = stdin.readLineSync()!;
    stdout.write("enter the  Source : ");
    train_source = stdin.readLineSync()!;
    stdout.write("enter the  Destination : ");
    train_destination = stdin.readLineSync()!;
    stdout.write("enter the Time : ");
    train_time = stdin.readLineSync()!;
  }

  getter() {
    print("\nTrain number :$train_number");
    print("Train name : $train_name");
    print("Source : $train_source");
    print("Destination : $train_destination");
    print("Time : $train_time\n\n");
  }

  int? getTrainNumber() => train_number;

  static void searchTrain(List train) {
    print("\n> - - - Search Train - - - <\n");
    int trainNum;
    stdout.write("\nEnter number to search : ");
    trainNum = int.parse(stdin.readLineSync()!);
    bool found = false;
    train.forEach((element) {
      if (trainNum == element.getTrainNumber()) {
        found = true;
        element.getter();
      }
    });
    if (!found)
      print("\n>> No record found <<\n");
    else
      print("\n>> Result printed <<\n");
  }
}

void main() {
  Railway.getDash();
  List<Railway> train = List.empty(growable: true);
  Railway railway = Railway();

  while (Railway.choice != 4) {
    switch (Railway.choice) {
      case 1:
        {
          railway.setter();
          print("\n>> Added successfully <<\n");
          train.add(railway);
          Railway.getDash();
        }
        break;
      case 2:
        {
          print("\n> - - - All Trains Details are - - - <\n");
          train.forEach((element) {
            element.getter();
          });
          Railway.getDash();
        }
        break;
      case 3:
        {
          Railway.searchTrain(train);
          Railway.getDash();
        }
        break;
      case 4:
        exit(0);
      default:
        {
          print("\n>> Enter valid choice <<\n");
          Railway.getDash();
        }
    }
  }
}
