/*
write a program to enter 3 number  and then print the following case
number 1 is bigger than 2 : false
number 2 is bigger than 3 : true
number 3 is equal number 1 : false
the fianl output should be like this :
1
5
3
number 1 is bigger than 2 : false
number 2 is bigger than 3 : true
number 3 is equal number 1 : false
 */
import 'dart:io';

void main(List<String> args) {
  print('enter the first number');
  var num1 = int.parse(stdin.readLineSync()!);
  print('enter the second number');
  var num2 = int.parse(stdin.readLineSync()!);
  print('enter the third number');
  var num3 = int.parse(stdin.readLineSync()!);
  print('number 1 is bigger than 2: ${num1>num2}'); // wasnt sure if 2 meant just the number "2" or as in num2 to so i just assumed the second one
  print('number 2 is bigger than 3 : ${num2 > num3}'); // same as above wasnt sure between just the number 3 or num3 
  print('number 3 is equal to number 1: ${num3 == num1}');
}
