// 5. Write a program to find the Area of Triangle

import 'dart:io';

void main(){
    double base, height, area;

    print("Enter The Base : ");
    base = double.parse(stdin.readLineSync()!);

    print("Enter The Height : ");
    height = double.parse(stdin.readLineSync()!);

    area = 1/2 * base * height;

    print("The Area Of Triangle Is $area.");
}