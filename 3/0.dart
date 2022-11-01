/*write a dart program that let a user enter a number value then support the following case
1:let user now if the number is even or odd
2:let user now if the is negative or positive
3:let user exit
 */

/* the output of this may look like
Enter Number Please
2
what you need to know about 2
1:is even or odd
2:is negative or positive
3:to exit
1
2 is even
Enter Number Please
5
what you need to know about 5
1:is even or odd
2:is negative or positive
3:to exit
2
5 is positive
Enter Number Please
5
what you need to know about 5
1:is even or odd
2:is negative or positive
3:to exit
3
 */

import 'dart:io';

void main(List<String> args) {
  int n =0;
  String choice="" ;
  while (choice != "3"){
  print('enter the number here: ');
  int n = int.parse(stdin.readLineSync()!);
  print('''please enter what you want to find out about the number:
          1 : is even or odd
          2 : is negative or positive
          3: exit the program ''');
  String choice = stdin.readLineSync()!;
  
    if (choice == '1'){
      evenodd(n);
    }
    else if (choice == '2'){
      positiveNegative(n);
    }
    else if (choice == '3'){
      break;
    }
    else{
      print('this choice is not valid');
      break ;
    }
  }
}

void evenodd(int n){
  if (n.isEven){
    print('number is even');
  }
  else{
    print('number is odd');
  }
}

void positiveNegative(int n){
  if (n.isNegative) {;
    print('the number is negative');
  }
  else{
    print('the number is postive');
  }
  }