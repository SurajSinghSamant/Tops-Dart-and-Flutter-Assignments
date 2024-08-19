// 20.6. Write a program you have to print the table of given number

import 'dart:io';

void main()
{
 int i, num;

 print("Enter The Number : ");
 num =int.parse(stdin.readLineSync()!);

 for(i=1; i<=10; i++)
 {
   print("$num * $i = ${num * i}");
 }
}   

