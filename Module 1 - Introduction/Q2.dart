/* 2. Write a program to make addition, Subtraction, Multiplication and
Division of Two Numbers. */

 import "dart:io";

    void main(){
        int num1, num2, addition, subtraction, multiplication;
        double division;

        print("Enter First Number : ");
        num1 = int.parse(stdin.readLineSync()!);

        print("Enter Second Number : ");
        num2 = int.parse(stdin.readLineSync()!);

        addition = num1 + num2;
        subtraction = num1 - num2;
        multiplication = num1 * num2;
        division = num1 / num2;

        print("Addition Of $num1 And $num2 Is $addition");
        print("Subtraction Of $num1 And $num2 Is $subtraction");
        print("Multiplication Of $num1 And $num2 Is $multiplication");
        print("Divison Of $num1 An $num2 Is $division");
    }