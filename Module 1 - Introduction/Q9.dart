// 9. Write a Program to show swap of two No's without using third variable.

   import 'dart:io';

   void main()
   {
    int num1, num2;

    print("Enter The First Value : ");
    num1 = int.parse(stdin.readLineSync()!);
    
    print("Enter The Second Value : ");
    num2 = int.parse(stdin.readLineSync()!);

    print("-------------BEFORE SWAP -------------");
    print("Number 1 : $num1");
    print("Number 2 : $num2");

    num1 = num1 + num2;
    num2 = num1 - num2;
    num1 = num1 - num2;
    
    print("------------AFTER SWAP ----------------");
    print("Number 1 : $num1");
    print("Number 2 : $num2");
   }