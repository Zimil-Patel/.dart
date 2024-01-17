//4. Write a Dart Program to create a function which accepts marks of 3 to 5 occupations
//and returns a percentage of success to gain a new job as a software developer (using optional parameters).

import 'dart:io';

void main() {
  print('\n> - - - Get success percentage - - - <\n');

  Map<String, double> marks = {
    'math': 60,
    'english': 75,
    'computer': 80,
    'science': 70,
    'drwaing': 50
  };

  print(
      'Success Percentage: ${getSuccessPercentage(math: marks['math'], science: marks['science'], english: marks['english']).toStringAsFixed(2)}');
}

double getSuccessPercentage(
    {double? math,
    double? english,
    double? computer,
    double? science,
    double? drawing}) {
  List markList = [math, english, computer, science, drawing];

  double sum = 0;

  for (var marks in markList) {
    if (marks != null) sum = sum + marks;
  }

  return (sum / 500) * 100;
}
