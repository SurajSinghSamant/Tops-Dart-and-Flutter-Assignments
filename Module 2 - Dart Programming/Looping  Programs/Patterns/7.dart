// pattern 7

import 'dart:io';

void main()
{
  for(int i=1; i<=5; i++) {
    for(int j=1; j<=9; j++) {
      if(j>=6-i && j<=4+i) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
     print(" ");
  }
}