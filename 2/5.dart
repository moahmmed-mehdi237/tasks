/*
write a dart program to let the user enter  5 number and print the multiply of this 5 number
NOTE: use a loop for entering the numbers
the final result may look like this:
please enter 5 number:
3
2
3
1
the multiply of this number is  18
*/
 import 'dart:io';

void main(List<String> args) {
  var result= 1;
  var i=0;
  while (i<5){
    print('enter your number here : ');
var number = int.parse(stdin.readLineSync()!);
  result *=number;
  print('the current result is $result');
  i++;
  }
  print('the final result is $result');
}