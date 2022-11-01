/*
write a dart program for a student attendance for a school class  
it should have 4 functionally
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
NOTE:create function for each case above and do not put all code in the main function
4- exit from the program
NOTE: print a msg to user if he try to print the student and there is no one in the class
NOTE: there is no need for now to handle the case for having duplicate name
 */

/*  the output of execute the program is :
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
1
enter the name of new student
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
1
enter the name of new student
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
3
the names student in the class now:
ali
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
2
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
2  
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
2
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
3
no student exist
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
4
 */

import 'dart:io';

void main(List<String> args) {
  List students = [];
  var choice ='';
  while (choice != '4'){  
    print('''what do you wish to do:
    1- add student to the class
    2-remove student from the class
    3-print all the students in the class
    4-exit''');
  choice =stdin.readLineSync()!;
  var name ='';
  if (choice == '1'){
    addstudent(students, name);
  }
  else if(choice == '2'){
    removestudent(students , name);
  }
  else if (choice == '3'){
    if (students.length!=0){
      print(students);
      }else{
        print('class is empty');
      }
    
  }
  else if(choice == '4'){
    break;
  }
  else{
    print('option does not exist');
  }
}

}

void addstudent(List set , String name){
  print('enter the students name here: ');
  name = stdin.readLineSync()!;
  set.add(name);
}

void removestudent(List set , String name){
  print('enter the students name here');
  name = stdin.readLineSync()!;
  set.remove(name);
}