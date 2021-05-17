import 'dart:io';
import 'dart:async';

void main() {
  String name;
  int age;

  print('Enter your name:');
  name = stdin.readLineSync();
  print('Enter your age:');
  age = int.parse(stdin.readLineSync());

  print('You are $age and your name is $name');
}
