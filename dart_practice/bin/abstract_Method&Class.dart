void main() {
  var name1 = fullname();
  name1.sname = 'Siddhartha Pandey';
  name1.myName();
  print('');

  var name2 = anotherName();
  name2.sname = 'Hari';
  name2.myName();
}

abstract class name {
  String sname;
}

class fullname extends name {
  void myName() {
    this.sname = sname;
    print("My name is ${this.sname}");
  }
}

class anotherName extends name {
  void myName() {
    this.sname = sname;
    print('His name is ${this.sname}');
  }
}
