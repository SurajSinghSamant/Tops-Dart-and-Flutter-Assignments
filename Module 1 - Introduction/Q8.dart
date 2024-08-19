/* 8. Write a program to calculate sum of 5 subjects & find the
percentage. Subject marks entered by user.  */

import 'dart:io';

void main()
{
  int english, hindi, science, maths, history, sum;
  double percentage;
  int totalMarks = 500;

  print("Enter Marks For English : ");
  english = int.parse(stdin.readLineSync()!);

  print("Enter Marks For Hindi : ");
  hindi = int.parse(stdin.readLineSync()!);

  print("Enter Marks For Science : ");
  science = int.parse(stdin.readLineSync()!);

  print("Enter Marks For Maths : ");
  maths = int.parse(stdin.readLineSync()!);

  print("Enter Marks For History : ");
  history = int.parse(stdin.readLineSync()!);  

  sum = english + hindi + science + maths + history;

  percentage = (sum / totalMarks) * 100;

  print("The Sum Of 5 Subjects Is $sum And The Percentage Is $percentage");
}