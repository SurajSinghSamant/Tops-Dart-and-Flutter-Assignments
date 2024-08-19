// 14. Write a program to find the Max number from the given three
// number using Ternary Operator

import 'dart:io';

void main()
{
  int num1, num2, num3, Max;

  print("Enter The First Number : ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter The Second Number : ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter The Third Number : ");
  num3 = int.parse(stdin.readLineSync()!);

  Max = (num1 > num2 )? ((num1 > num3) ? num1 : num3) : ((num2 > num3) ? num2 : num3);

  print("$Max Is The Max Number");
}