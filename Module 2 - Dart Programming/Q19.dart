// 19. Write a program of to find out the Area of Triangle, Rectangle and
// Circle using If Condition.(Must Be Menu Driven)

import 'dart:io';

void main()
{
  double? radius, base, height, width, length;
  double areaT, areaR, areaC;
  int choice;

  print("----------------- MENU ------------------");
  print("Press 1 For Area Of Triangle  ");
  print("Press 2 For Area Of Rectangle  ");
  print("Press 3 For Area Of Circle  ");
  print("-----------------------------------------");

  print("Enter Your Choice : ");
  choice = int.parse(stdin.readLineSync()!);

  if(choice == 1)
  {
    print("You Have Chosen Area Of Triangle");
    print("Enter The Base : ");
    base = double.parse(stdin.readLineSync()!);

    print("Enter The Height : ");
    height = double.parse(stdin.readLineSync()!);

    areaT = 1/2 * base * height;

    print("Area Of Triangle Is $areaT");
  }

  if(choice == 2)
  {
    print("You Have Chosen Area Of Rectangle ");
    print("Enter The Width : ");
    width = double.parse(stdin.readLineSync()!);

    print("Enter The Length : ");
    length = double.parse(stdin.readLineSync()!);

    areaR = width * length;

    print("Area Of Rectangle Is $areaR");
  }

  if(choice == 3)
  {
    print("You Have Chosen Area Of Circle");
    print("Enter The Radius : ");
    radius = double.parse(stdin.readLineSync()!);

    areaC = 3.14 * radius * radius;

    print("Area Of Rectangle Is $areaC");
  }

  print("------------------------------------------------");
  print("Thank You For Running The Program");
}
