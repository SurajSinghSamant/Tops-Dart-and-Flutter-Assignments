// 4. Write a program to find the Area of Circle

import 'dart:io';

void main() {
    double pi = 3.14, radius, area;

    print("Enter Radius : ");
    radius = double.parse(stdin.readLineSync()!);

    area = pi * radius * radius;
   
    print("Area Of Circle Is $area.");
}