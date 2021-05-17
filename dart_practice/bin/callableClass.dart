import 'dart:ffi';

import 'abstract_Method&Class.dart';

void main() {
  var sym1 = symbol();
  sym1.name(255, 'Binayak');
  sym1.name(856, 'Siddhartha');
}

class symbol {
  name(int sym, String nam) {
    print('The name is $nam and the Symbol is $sym');
  }
}
