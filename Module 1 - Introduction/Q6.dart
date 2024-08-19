// 6. Write a program to find the simple Interest.

import 'dart:io';

void main()
{
  int principal, time;
  double rate, SI;

  print("Enter The Principal Amount : ");
  principal = int.parse(stdin.readLineSync()!);

  print("Enter The Rate Of Interest Per Annum(In Percentage) : ");
  rate = double.parse(stdin.readLineSync()!);

  print("Enter The Time(In Years) : ");
  time = int.parse(stdin.readLineSync()!);

  SI = (principal * rate * time) / 100;

  print("The Simple Interest Is $SI");
}