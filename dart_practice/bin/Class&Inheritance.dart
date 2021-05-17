void main() {
  var hari1 = hari();
  hari1.name = 'Hari';
  hari1.age = 24;
  hari1.address = 'Kathmandu';
  hari1.id = 223;
  hari1.details();

  print('\n');

  var ram1 = ram();
  ram1.name = 'Ram';
  ram1.age = 24;
  ram1.address = 'Kdasdadadadamandu';
  ram1.id = 222313;
  ram.occ();
  ram1.details();
}

class student {
  int age, id;
  String name, address, color, work;
  void details() {
    print(
        'My name is ${this.name}(id:${this.id}). Im ${this.age} and livig in ${this.address}');
  }

  student(String color) {
    this.color = color;
    print('This is the students detail!!');
  }
  student.occ(String work) {
    this.work = work;
  }
}

class hari extends student {
  //String color;
  void details() {
    print('Remarks: Hari is a excellent person(AA)');
    super.details();
  }

  hari() : super('White') {
    print('Hari has ${this.color}');
  }
}

class ram extends student {
  //String color;
  void details() {
    print('Remarks: Ram is a good person (AB)');
    super.details();
  }

  ram() : super('Black') {
    print('Ram is ${this.color} beauty');
  }
  ram.occ() : super.occ('Engineer') {
    print('Ram is an ${this.work}');
  }
}
