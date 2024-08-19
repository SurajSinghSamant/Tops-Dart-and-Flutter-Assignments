// 20.8. Write a program to find out the max from given number (E.g. No: -1562
// Max number is 6

import 'dart:io';

void main()
{
  int num, max = -1;

  print("Enter The Number : ");
  num = int.parse(stdin.readLineSync()!);

  if(num<0) 
  {
    num = num - num;
  }

  while(num>0)
  {
    int digit = num % 10;
    if(digit > max)
    {
      max = digit;
    }
    num = num ~/ 10;
  }

  if(max == -1) 
  {
    print("Not The Max Digit");
  }
  else
  {
    print("$max Is The Max Digit");
  }
}