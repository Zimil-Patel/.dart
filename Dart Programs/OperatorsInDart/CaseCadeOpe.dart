//Casecode Operator
//..
class Student {
  String? str;

  void printStr() {
    print(str);
  }

  void MakeUpper() {
    str = str?.toUpperCase();
  }

  void MakeLower() {
    str = str?.toLowerCase();
  }
}

void main() {
  Student()
    ..str = "StarBoY"
    ..printStr()
    ..MakeUpper()
    ..printStr()
    ..MakeLower()
    ..printStr();
}
