/* 1. Display This Information using print
• Your Name
• Your Birth date
• Your Age
• Your Address */

import "dart:io";

void main(){

  String name, dob, age, address;

print("Enter Your Name : ");
name = stdin.readLineSync()!;

print("Enter Your DOB : ");
dob = stdin.readLineSync()!;

print("Enter Your Age : ");
age = stdin.readLineSync()!;

print("Enter Your Address : ");
address = stdin.readLineSync()!;

print("-----------------Your Information------------------");
print("Your Name : $name");
print("Your Birthdate : $dob");
print("Your Age : $age");
print("Your Address : $address");
}