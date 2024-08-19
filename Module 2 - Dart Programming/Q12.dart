// 12. Write a Program to check the given number is prime or not prime.

import 'dart:io';

void main()
{
  int num, count = 0;

  print("Enter The Number : ");
  num = int.parse(stdin.readLineSync()!);

  for(int i=1; i<=num; i++)
  {
    if(num % i == 0)
    {
      count++;
    }
  }

  if(count == 2)
  {
    print("It Is A Prime Number");
  } 
  else
  {
    print("It Is Not A Prime Number");
  }
}
