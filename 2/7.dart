/*
resolve exerciuse 5 but use a function to enter a number and convert it into int
 */

import 'dart:io';

void main(List<String> args) {
  var result= 1;
  var i=0;
  while (i<5){
    print('enter your number here : ');
var numb = inputNumber();
  result *=numb;
  print('the current result is $result');
  i++;
  }
  print('the final result is $result');
}

int inputNumber(){
  var input = stdin.readLineSync()!;
  var number = int.parse(input);
  return number;
}