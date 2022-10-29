/*
write a program to let user enter 5 number into a list 
then print only the odd number 
the final result may look like this:
please enter 5 number:
3
2
3
1
the odd numbers is:
3
1
*/

import 'dart:io';

void main(List<String> args) {
  var odds = [];
  print('please enter 5 numbers here: ');
  for (var i =0; i<5;i++){
    var num = int.parse(stdin.readLineSync()!);
    if (num% 2 !=0 && !odds.contains(num)){  
      odds.add(num);
    }
  }
    print(odds);
}