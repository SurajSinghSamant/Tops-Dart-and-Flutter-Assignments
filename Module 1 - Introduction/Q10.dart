// 10. Write a Program to check the given number is Positive, Negative.

import 'dart:io';

void main()
{
    int num;

    print("Enter A Number : ");
    num = int.parse(stdin.readLineSync()!);

    if (num >= 0)
    {
        print("Number Is Positive");
    }
    else{
        print("Number Is Negative ");
    }
} 