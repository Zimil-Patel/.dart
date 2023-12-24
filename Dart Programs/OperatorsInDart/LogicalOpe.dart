//Logical Operators
//&&, ||, !
import 'dart:io';

void main() {
  var a, b;
  print("Enter a : ");
  a = int.parse(stdin.readLineSync()!);
  print("Enter b : ");
  b = int.parse(stdin.readLineSync()!);

  print("a<20 && b<20 both are less then 20 : ${a < 20 && b < 20}"); //  '&&'
  print("a<20 || b<20 at least one of them less then 20 : ${a < 20 || b < 20}"); // '||'
  print("!(a<20 || b<20) both are not less then 20 : ${!(a < 20 && b < 20)}"); // '!'

}
