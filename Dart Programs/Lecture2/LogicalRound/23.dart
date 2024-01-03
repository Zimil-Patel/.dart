//23.Wap to addition of two matrices.

import 'dart:io';

void main() {
  List m1 = [
    [10, 20],
    [30, 40],
    [50, 10]
  ];

  List m2 = [
    [1, 2],
    [3, 4],
    [5, 1]
  ];

  List sumMatrix = [
    [0, 0],
    [0, 0],
    [0, 0]
  ];

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 2; j++) {
      stdout.write("${m1[i][j]}\t");
    }
    if (i == 1) stdout.write(" + ");

    for (int j = 0; j < 2; j++) {
      stdout.write("\t${m1[i][j]}  ");
    }
    if (i == 1) stdout.write(" = ");

    for (int j = 0; j < 2; j++) {
      sumMatrix[i][j] = m1[i][j] + m2[i][j];
      stdout.write("\t${sumMatrix[i][j]}  ");
    }

    print("");
  }
}
