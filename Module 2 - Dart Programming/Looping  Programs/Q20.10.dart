// Write a program you have to make a summation of first and last Digit.
// (E.g. 1234 ans:-5)

import 'dart:io';

void main()
{
  int num, sum;

  print("Enter The Number : ");
  num = int.parse(stdin.readLineSync()!);

  int digit1 = num % 10;
  
  if(num<0)
  {
    num = num - num;
  }

  while(num >= 10)
  {
    num = num ~/ 10;
  }

  int digit2 = num;
  sum = digit1 + digit2;

  print("Summation Of First And Last Digit Is $sum");
}