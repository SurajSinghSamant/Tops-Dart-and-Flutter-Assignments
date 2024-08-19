// pattern 3

import 'dart:io';

void main()
{
  int rows = 5;

  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      if(j % 2 == 0)
      {
        stdout.write("0 ");
      }
      else
      {
        stdout.write("1 ");
      }
    }
    print('');
  }
}