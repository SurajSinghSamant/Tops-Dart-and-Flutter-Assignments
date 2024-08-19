// 20.7. Write a program to print the number in reverse order

import 'dart:io';
void main()
{
  int num, rem, rev = 0;

  print("Enter The Number : ");
  num = int.parse(stdin.readLineSync()!);

  while(num != 0)
  {
    rem = num % 10;
    rev = rev * 10 + rem;
    num = num ~/ 10;
  }

  print("$rev is Reversed");
}


