import 'dart:io';

class AgeCalculator {
  int currentDate = 23;
  int currentMonth = 1;
  int currentYear = 2024;

  bool validateAge(int birthDate, int birthMonth, int birthYear) {
    //validate year
    if (birthYear >= 1924 && birthYear <= 2024) {
      //validatte month
      if (birthMonth < 1 || birthMonth > 12) {
        print("Invalid month. Month must be between 01 and 12.");
        return false;
      } else {
        //validate days
        if (birthDate < 1 || birthDate > 31) {
          print("Invalid day. Day must be between 01 and 31.");
          return false;
        } else {
          //check for leap year and february month
          if (birthYear % 4 == 0 &&
              (birthYear % 100 != 0 || birthYear % 400 == 0)) {
            if (birthMonth == 2 && (birthDate < 1 || birthDate > 29)) {
              print(
                  "Invalid day for February in a leap year. Day must be between 01 and 29.");
              return false;
            } else {
              return true;
            }
          } else {
            if (birthMonth == 2 && (birthDate < 1 || birthDate > 28)) {
              print("Invalid day for February. Day must be between 01 and 28.");
              return false;
            } else {
              return true;
            }
          }
        }
      }
    } else {
      print("\n!!Enter valid birth year[between 1924 to 2024]\n");
      return false;
    }
  }

  int getAge(int birthDate, int birthMonth, int birthYear) {
    int age = currentYear -
        birthYear -
        ((currentMonth > birthMonth ||
                (currentMonth == birthMonth && currentDate >= birthDate))
            ? 0
            : 1);
    ;

    return age;
  }
}

class UserInfo extends AgeCalculator {
  late int _id;
  late String _name;
  late int _birthDate, _birthMonth, _birthYear;
  late int _age;

  void setInfo(int id, String name, int birthDate, int birthMonth,
      int birthYear, int age) {
    this._id = id;
    this._name = name;
    this._birthDate = birthDate;
    this._birthMonth = birthMonth;
    this._birthYear = birthYear;
    this._age = age;
  }

  void getInfo() {
    print("\n>> User id : $_id");
    print("   name : $_name");
    print("   birthDate : $_birthDate/$_birthMonth/$_birthYear");
    print("   age : $_age\n");
  }
}

void main() {
  List<UserInfo> users = List.empty(growable: true);

  //getting user info
  for (int i = 0; i < 3; i++) {
    users.add(getInfoInput());
  }

  //printing user info
  print("\n>> - - - Users details are - - - <<");
  for (int i = 0; i < 3; i++) {
    users[i].getInfo();
  }
}

UserInfo getInfoInput() {
  List<UserInfo> users = List.empty(growable: true);
  bool isValid = false;
  int id;
  String name;
  int birthDate, birthMonth, birthYear;

  stdout.write(">> Enter user id : ");
  id = int.parse(stdin.readLineSync()!);
  stdout.write("   Enter user name : ");
  name = stdin.readLineSync()!;
  stdout.write("   Enter user birth date : ");
  birthDate = int.parse(stdin.readLineSync()!);
  stdout.write("   Enter user birth month : ");
  birthMonth = int.parse(stdin.readLineSync()!);
  stdout.write("   Enter user birth year : ");
  birthYear = int.parse(stdin.readLineSync()!);

  AgeCalculator ageCalculator = new AgeCalculator();

  isValid = ageCalculator.validateAge(birthDate, birthMonth, birthYear);

  if (isValid) {
    UserInfo userInfo = new UserInfo();
    userInfo.setInfo(id, name, birthDate, birthMonth, birthYear,
        ageCalculator.getAge(birthDate, birthMonth, birthYear));
    users.add(userInfo);
    return userInfo;
  } else {
    return getInfoInput();
  }
}
