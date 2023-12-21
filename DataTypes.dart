import 'dart:ffi';

main() {
  // not specified data type of variable
  var var1 = 25.5;
  var var2 = 50;
  var var3 = "Hello world!";
  var var4 = '65';

  print("\n- - - Data types are not specified - - -\n");
  print(">> Infered by dart compiler : $var1");
  print(">> Infered by dart compiler : $var2");
  print(">> Infered by dart compiler : $var3");
  print(">> Infered by dart compiler : $var4");

  print("\n- - - Data types are specified - - -\n");

  //Number - int, double
  int num1 = 50;
  double pi = 3.14;
  String str = "Hello Star!";
  bool isValid = true;
  print(">> Predefined data type (int) : $num1");
  print(">> Predefined data type (double) : $pi");
  print(">> Predefined data type (String) : $str");
  print(">> Predefined data type (bool) : $isValid");

  print("\n");
}
