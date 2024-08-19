// 7. Write a program to convert temperature from degree centigrade to Fahrenheit.

import 'dart:io';

void main()
{
    int Fahrenheit;
    double Celsius;

    print("Enter The Temperature In Fahrenheit : ");
    Fahrenheit = int.parse(stdin.readLineSync()!);

    Celsius = (Fahrenheit - 32) * 5 / 9;
    print("The Temperature In Celsius is ${Celsius.toStringAsFixed(1)}");
}