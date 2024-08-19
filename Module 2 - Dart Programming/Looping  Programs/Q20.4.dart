// 20.4. Write a program you have to find the factorial of given number.

import 'dart:io';

void main()
{
  int i, num, fact = 1;

  print("Enter The Number : ");
  num = int.parse(stdin.readLineSync()!);

  for(i=1; i<=num; i++)
  {
    fact = fact * i;
  }

  print("The Factorial Is $fact");
}