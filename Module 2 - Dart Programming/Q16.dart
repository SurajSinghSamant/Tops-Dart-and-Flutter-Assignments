/* 16. Write a program user enter the 5 subjects mark. You have to make a
total and find the percentage. percentage > 75 you have to print
“Distinction” percentage > 60 and percentage <= 75 you have to
print “First class” percentage >50 and percentage <= 60 you have to print
“Second class” percentage > 35 and percentage <= 50 you have to print
“Pass class” Otherwise print “Fail” */

import 'dart:io';

void main()
{
  int subject, total = 0;
  double percentage;

  for(int i=1; i<=5; i++)
  {
    print("Enter Received Marks (From 100) : ");
    subject = int.parse(stdin.readLineSync()!);

    total = total + subject;
  }
  percentage = total / 500 * 100;

  print("Your Total Is $total");
  print("Your Percentage Is ${percentage.toStringAsFixed(2)}.");

  if(percentage > 75)
  {
    print("Distinction");
  }
  else if(percentage > 60 && percentage <= 75)
  {
    print("First Class");
  }
  else if(percentage > 50 && percentage <= 60)
  {
    print("Second Class");
  }
  else if(percentage > 35 && percentage <= 50)
  {
    print("Pass Class");
  }
  else 
  {
    print("Fail");
  }
}