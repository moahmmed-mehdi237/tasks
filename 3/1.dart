/*
complete  numberOfOne function below to make it calculate the number of ones(1) in the binary form of the value number
use the below convertToBinary function to convert the number into binary string
NOTE: do not change any things inside main or convertToBinary function
NOTE: only write your code inside numberOfOne
NOTE: binary is a way to represent a number with only 1 and 0
convertToBinary(5) => 101
numberOfOne(5) => 2
convertToBinary(12) => 1100
numberOfOne(12) => 2
convertToBinary(19) => 10011
numberOfOne(19) => 3
 */


int numberOfOne(int value) {
  var binary = convertToBinary(value);
  print(binary);
  var count = 0;
  for (var ones in binary.split(''))
  if(ones == '1'){
    count ++;
  }
  return count;
}

void main(List<String> args) {
  print(numberOfOne(5));
  print(numberOfOne(12));
  print(numberOfOne(19));
}

String convertToBinary(int val) {
  return val.toRadixString(2);
}