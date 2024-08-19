// 20.5. Write a program you have to print the Fibonacci series up to user given number

import 'dart:io';
void main()
{
  int i=1, num1 = 0, num2 = 1, num3 = num1 + num2;
  int end;

  print("Enter Your End Point : ");
  end = int.parse(stdin.readLineSync()!);

  print("Your Fibonacci Series Is : ");
  print("$num1, $num2, $num3");

  while(i <= end-3)
  {
    num1 = num2;
    num2 = num3;
    num3 = num1 + num2;
    print("$num3");
    i++;
  }
}
