void main() {
  print('===========HashMap using constructors==========');
  Map<int, String> names = Map();
  names[1] = 'Siddhartha';
  names[2] = 'Sushant';
  names[3] = 'Anmol';
  names[4] = 'Pandey';

  names.update(3,
      (Anmol) => 'Hari Lal'); // Now the value of Key 3 is updated to Hari Lal.

  // names.remove(2);
  // // print(names.values);
  print(names.isEmpty);
  print(names.length);

  print('');

  print(names[1]);

  print('');

  for (int key in names.keys) {
    print(key);
  }

  print('');

  for (String value in names.values) {
    print(value);
  }

  print('-----------Printing keys along with values-----------');

  names.forEach((key, value) {
    print('$key. $value');
  });

  print('---------HashMap using Literals------------');

  Map<int, String> surname = {
    1: 'Pandey',
    2: 'Bhandari',
    3: 'Paudel',
    4: 'Yadav',
    5: 'Neupane'
  };

  print(surname.values); //this syntax prints in a single line under braces.
  print('');
  //prints in column.->
  for (int key in surname.keys) {
    print(key);
  }

  surname.update(4, (Yadav) => 'Kalyan');

  print('');

  for (String value in surname.values) {
    print(value);
  }

  print('');

  surname.forEach((key, value) {
    print('$key. $value');
  });
}
