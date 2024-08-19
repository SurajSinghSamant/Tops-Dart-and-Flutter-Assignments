// 3. Write a program to make a square and cube of number.

import 'dart:io';

void main()
{
    int num;

    print("Enter The Number : ");
    num = int.parse(stdin.readLineSync()!);

    print("Number Is $num");
    print("Square Of $num Is ${num * num}");
    print("Cube Of $num Is ${num * num * num}");
}