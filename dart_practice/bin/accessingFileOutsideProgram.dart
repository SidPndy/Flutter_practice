import 'dart:io';
import 'dart:async';

void main() {
  File myFile = new File('payeer.txt');
  myFile.readAsString().then((String info) {
    count(info);
  });
}

void count(String info) {
  int number = 0;
  for (int i = 0; i < info.length; i++) {
    if (info[i] == ' ') {
      number++;
    }
  }
  print(number);
}
