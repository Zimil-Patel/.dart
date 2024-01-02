//10.Wap print all prime no into 1 to N.

void main() {
  var num = 10;
  var flag = true;

  print("Prime numbers between 1 to $num : ");

  for (int i = 2; i <= num; i++) {
    flag = true;

    for (int j = 2; j < i; j++) {
      if (i % j == 0) flag = false;
    }

    if (flag) print(i);
  }

  print("");
}
