import 'dart:io';

enum Fruit {apple , banana, orange , pineapple}

void main(List<String> args) {
  print('which fruit do u have in mind from the following ${Fruit.values}}');
  String choice = stdin.readLineSync()!;
  var player =Fruit.values.byName(choice);
  print(player);
}