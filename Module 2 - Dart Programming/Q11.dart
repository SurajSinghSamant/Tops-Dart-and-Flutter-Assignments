// 11. Write a Program to check the given year is leap year or not.

import 'dart:io';
void main()
{
    int year;

    print("Enter The Year : ");
    year = int.parse(stdin.readLineSync()!);

    if (year % 4 == 0 )
    {
        print("It Is A Leap Year");
    }
    else
    {
        print("It Is Not A Leap Year");
    }
}
