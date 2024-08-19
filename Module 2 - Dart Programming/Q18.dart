// 18. Write a Program of Addition, Subtraction ,Multiplication and
// Division using Switch case.(Must Be Menu Driven)

import 'dart:io';

void main()
{
  int? Addition, Subtraction, Multiplication, num1, num2;
  double? Division;
  String? Operator;

  print("Enter The First Number : ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter The Second Number : ");
  num2 = int.parse(stdin.readLineSync()!);

  print("------------------- MENU -------------------");
  print("Press '+' For Addition ");
  print("Press '-' For Subtraction ");
  print("Press '*' For Multiplication ");
  print("Press '/' For Divison ");
  print("--------------------------------------------");

  print("Enter Your Operator : ");
  Operator = stdin.readLineSync()!;

  switch(Operator)
  {
    case '+' :
    Addition = num1 + num2; 
    print("The Sum Of $num1 And $num2 Is $Addition");
    break;

    case '-' :
    Subtraction = num1 - num2; 
    print("The Difference Of $num1 And $num2 Is $Subtraction");
    break;

    case '*' :
    Multiplication = num1 * num2; 
    print("The Product Of $num1 And $num2 Is $Multiplication");
    break;

    case '/' :
    Division = num1 / num2;
    print("The Quotient Of $num1 And $num2 Is $Division");
    break;

    default : 
    print("Enter A Valid Operator ! ");
    break;
  }

  print("---------------------------------------------");
  print("Thank You For Running The Program.");
}