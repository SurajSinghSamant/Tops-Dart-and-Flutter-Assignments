// pattern 10

// pattern 5

import 'dart:io';

void main()
{
  for(int i=1; i<=5; i++) {
    for (int j=1; j<=5; j++) {
      if(j>=6 - i) {
        stdout.write("$i");
      }
      else {
      stdout.write(" ");
      }
    }
    print("");
  }
}