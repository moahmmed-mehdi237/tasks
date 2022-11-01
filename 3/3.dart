/*
write a program to create a medical archive for covid to store the following data from the user
name ,phone , has covid before or not
it should support the following case
1- add new person
2- print all data
3- exit
NOTE: you should use a list and map (map inside a list) [{},{}]
 */
/* the final output 
________________________
what you want to perform
1- add new person
2- print all data
3- exit
1
enter name:
ali
enter phone number:
000
is have covid (yes or no):
yes
done entering
________________________
what you want to perform
1- add new person
2- print all data
3- exit
2
__
name is : ali
phone number is : 000
has covid before: true
________________________
what you want to perform
1- add new person
2- print all data
3- exit
1
enter name:
hassan
enter phone number:
4444
is have covid (yes or no):
no
done entering
________________________
what you want to perform
1- add new person
2- print all data
3- exit
2
__
name is : ali
phone number is : 000
has covid before: true
__
name is : hassan
phone number is : 4444
has covid before: false
________________________
what you want to perform
1- add new person
2- print all data
3- exit
3
 */

import 'dart:io';

void main(List<String> args) {
  List patients = [];
  var choice = '';
  while (choice != '3'){
    print('''wahat do you want to perform
    1-add new person
    2-print all data
    3-exit''');
    choice = stdin.readLineSync()!;
    if (choice =='1'){
      addpatient(patients);
    }
    else if (choice =='2'){
      print(patients);
    }
    else if (choice=='3'){
      break;
    }
    else{
      print('this is not a valid option');
    }
}
}

void addpatient(List list){
  
  list.add({'name':name(),
  'phone number':phonenumber(),
  'has covid': hascovid(),
  });


}

String name(){
  print('please enter your name');
  var name = stdin.readLineSync()!;
  return name;
}

String phonenumber(){
  print('please enter your phone number');
  var number = stdin.readLineSync()!;
  return number;
}

bool hascovid(){
  print('do they have covid (yes or no)');
  var choice = stdin.readLineSync()!;
  if (choice == 'yes'){
    return true;
  }
  else{
    return false;
  }

}