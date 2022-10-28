/*
write a program to enter two number from user
and then print the result of divide this two number 
print in this form
enter number 1:
1
enter number 2:
3
1 / 3 = 4
 */

import 'dart:io';

void main(List<String> args) {
  print('enter number 1:');
  var num1 = int.parse(stdin.readLineSync()!);
  print('enter number 2:');
  var num2 = int.parse(stdin.readLineSync()!);
  print('$num1 / $num2 = ${num1/num2}');
}