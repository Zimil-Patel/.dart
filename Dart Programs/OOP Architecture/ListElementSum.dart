//1. WAP to take a list using named parameter and return sum of all elements of list.
import 'dart:io';

void main() {
  List numList = List.empty(growable: true);
  int listSize;

  stdout.write("\n>> How many elements you want to add : ");
  listSize = int.parse(stdin.readLineSync()!);

  print("\n>> Enter elements of the list");

  for (int i = 0; i < listSize; i++) {
    stdout.write(">> Enter number[$i] : ");
    numList.add(int.parse(stdin.readLineSync()!));
  }

  print("Sum of all elements are : ${getSum(list: numList)}");
}

int getSum({required List list}) {
  int sum = 0;

  list.forEach((element) {
    sum += element as int;
  });

  return sum;
}
