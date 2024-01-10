/*
Write a Dart program to addition of two matrices of dimension 3x3. 
*/

import 'dart:io';

void main() {
  List m1 = [
    [10, 20, 10],
    [30, 40, 20],
    [50, 10, 10]
  ];

  List m2 = [
    [1, 2, 1],
    [3, 4, 2],
    [5, 1, 1]
  ];

  List sumMatrix = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  for (int i = 0; i < 3; i++) {
    //print matrix 1
    for (int j = 0; j < 3; j++) {
      stdout.write("${m1[i][j]}  ");
    }
    stdout.write(" ");

    //print +
    for (int j = 0; j < 3; j++) {
      if (i == 1 && i == j)
        stdout.write("+ ");
      else
        stdout.write("  ");
    }

    //print matrix 2
    for (int j = 0; j < 3; j++) {
      stdout.write("${m2[i][j]}  ");
    }
    stdout.write(" ");

    //print =
    for (int j = 0; j < 3; j++) {
      if (i == 1 && i == j)
        stdout.write("= ");
      else
        stdout.write("  ");
    }

    //print sum of 2 matrix
    for (int j = 0; j < 3; j++) {
      sumMatrix[i][j] = m1[i][j] + m2[i][j];
      stdout.write("${sumMatrix[i][j]}  ");
    }
    stdout.write(" ");

    print("");
  }
}
