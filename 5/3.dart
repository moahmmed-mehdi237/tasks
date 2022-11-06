/*
create a AirPlan class with the following attribute
1- model
2- yearOfMade
4- number of set
5- number of current passenger
5- number of engine
6- gas level (from 0 to 100)
and the follwing method
1- fly //(just print flying) /done
2- land //(just print landing and remove all Passenger) /done 
3- fullGas(int level) // add the current gas level   /done
4- addPassenger / done
5- removePassenger /done
6- isFullGas /done
7- isFullPassenger
we must also validate if there are empty set before adding a new passenger /done
and validate that the gas level is full before flying /done
after that write a main dart program to use this object
 */

void main(List<String> args) {
  Airplane a1 = Airplane('boeng', 50, 2000, 2);
  a1.fly();
  a1.fillGas(30);
  a1.addPassneger('mohammed');
  print(a1.currentPassengers);
  a1.land();
  print(a1.currentPassengers);
  print(a1);
}

class Airplane{
  final model;
  final yearOfMake;
  final numberOfFullPassengers;
  List <String> currentPassengers =[];
  final numberOfEngines;
  int gasLevel =100;

  Airplane(this.model,this.numberOfFullPassengers, this.yearOfMake, this.numberOfEngines);
  
  fly(){
    if (isFullGas()) print('cant fly, need more gas!');
    print('flying');
    gasLevel -= 70;
  }

  land(){
    print('landing');
    currentPassengers.clear();
  }

  fillGas(int level){
    gasLevel += level;
  }

  addPassneger(String name){
    if (currentPassengers.length >= numberOfFullPassengers) print('cant add another passenger');
    currentPassengers.add(name);
  }

  removePassneger (String name){
    currentPassengers.remove(name);
  }

  bool isFullGas(){
    if(gasLevel < 90) return false;
    return true ;
  }

  bool isFullPassenger(){
    if (currentPassengers.length < numberOfFullPassengers) return false;
    return true;
  }
}