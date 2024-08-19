// 13. Write a program to find the Max number from the given three
// number using Nested If

import 'dart:io';

void main()
{
    int? num1, num2, num3;

    print("Enter Number 1 : ");
    num1 = int.parse(stdin.readLineSync()!);

     print("Enter Number 2 : ");
    num2 = int.parse(stdin.readLineSync()!);

     print("Enter Number 3 : ");
    num3 = int.parse(stdin.readLineSync()!);

    if(num1 > num2)
    {
        if(num1 > num3)
        {
            print("$num1 Is Max Number");
        }
        else
        {
            print("$num3 Is Max Number");
        }
    }
    else {
        if(num2 > num3)
        {
            print("$num2 Is Max Number");
        }
        else
        {
            print("$num3 Is Max Number");
        }
    }
}   
    

