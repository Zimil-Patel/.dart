/*
Write a Dart program to find below mentioned operations on the 3x3 array using menu-driven programming approach. 
Perform below all mentioned by user choice: 
• Sum of all elements 
• Sum of specific Row 
• 
• 
Sum of specific Column 
Sum of diagonal elements 
Sum of antidiagonal elements 
Press 0 for exit 
*/

import 'dart:io';

void main() {
  List m1 = [
    [10, 20, 10],
    [30, 40, 20],
    [50, 10, 10]
  ];
  var choice = 0;

  print("> - - Given Matrix is - - <");
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("${m1[i][j]}  ");
    }
    print("");
  }

  while (true) {
    print("");
    print(" - - - - - - - - - - - - - - - - - - - - - -");
    print("|\t1. sum of all elements             |");
    print("|\t2. sum of specific row             |");
    print("|\t3. sum of specific column          |");
    print("|\t4. sum of diagonal elements        |");
    print("|\t5. sum of Anti-diagonal elements   |");
    print("|\t6. FOR EXIT                        |");
    print(" - - - - - - - - - - - - - - - - - - - - - -");
    stdout.write(">> Enter your choice [1/2/3/4] : ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        {
          sumOfAllEle(m1);
        }
        break;
      case 2:
        {
          sumParticularRowEle(m1);
        }
        break;
      case 3:
        {
          sumParticularColumnEle(m1);
        }
        break;
      case 4:
        {
          sumOfDiagonalEle(m1);
        }
        break;
      case 5:
        {
          sumOfAntiDiagonalEle(m1);
        }
        break;
      case 6:
        {
          exit(0);
        }
      default:
        {
          print("> - Enter valid option! - <");
        }
    }
  }
}

//find sum of all elements
void sumOfAllEle(List list) {
  int sum = 0;
  int temp;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      temp = list[i][j];
      sum += temp;
    }
  }

  print("\n>> Sum of all elements : $sum\n");
}

//find sum of particular row
void sumParticularRowEle(List list) {
  int sum = 0;
  int temp;
  int row;

  stdout.write("\nEnter row number to sum : ");
  row = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < 3; i++) {
    if (i == (row - 1))
      for (int j = 0; j < 3; j++) {
        temp = list[i][j];
        sum += temp;
      }
  }

  print("\n>> Sum of all elements in row($row) : $sum\n");
}

//find sum of particular column
void sumParticularColumnEle(List list) {
  int sum = 0;
  int temp;
  int column;

  stdout.write("\nEnter column number to sum : ");
  column = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (j == (column - 1)) {
        temp = list[i][j];
        sum += temp;
      }
    }
  }

  print("\n>> Sum of all elements in column($column) : $sum\n");
}

//find sum of diagonal elements
void sumOfDiagonalEle(List list) {
  int sum = 0;
  int temp;

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (i == j) {
        temp = list[i][j];
        sum += temp;
      }
    }
  }

  print("\n>> Sum of all diagonal elements : $sum\n");
}

//find sum of Anti-diagonal elements
void sumOfAntiDiagonalEle(List list) {
  int sum = 0;
  int temp;

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if ((i + j) == 2) {
        temp = list[i][j];
        sum += temp;
      }
    }
  }

  print("\n>> Sum of all Anti-diagonal elements : $sum\n");
}
