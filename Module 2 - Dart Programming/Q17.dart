// 17. Write Program use switch statement. Display Monday to Sunday

import 'dart:io';

void main()
{
  int choice ;

  print("Enter A Number For A Day In A Week(From 1 To 7) : ");
  choice = int.parse(stdin.readLineSync()!);

  switch(choice)
  {
    case 1 : 
    print("It's Monday");
    break;

    case 2 : 
    print("It's Tuesday");
    break;

    case 3 : 
    print("It's Wednesday");
    break;

    case 4 : 
    print("It's Thursday");
    break;

    case 5 : 
    print("It's Friday");
    break;
    
    case 6 : 
    print("It's Saturday");
    break;

    case 7 : 
    print("It's Sunday");
    break;

    default : 
    print("Enter A Valid Number ! ");
    break;
  }
}