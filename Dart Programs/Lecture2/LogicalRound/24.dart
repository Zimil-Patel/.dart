//25.Wap to find sum of diagonal elements of a matrix.

import 'dart:io';

void main() {
  List m1 = [
    [10, 20, 50],
    [30, 40, 75],
    [50, 10, 45]
  ];

  int sum = 0;
  int temp;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("${m1[i][j]}  ");
      if (i == j) {
        temp = m1[i][j];
        sum += temp;
      }
    }
    print("");
  }

  print("\nSum of diagonal matrix : $sum\n");
}
