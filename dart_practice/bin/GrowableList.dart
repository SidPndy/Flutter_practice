void main() {
  List<int> numList = List();
  numList.add(12);
  numList.add(23);
  numList.add(44);
  numList.add(55);
  numList.add(56);

  //numList.clear(); //delets the List.

  print('');
  numList.forEach((element) {
    print(element);
  });
  print('');

  for (int elements in numList) {
    print(elements);
  }

  print('');

  List<String> names = List();
  names.add('Siddhartha');
  names.add('Hari');
  names.add('Suzan');
  names.add('Manish');
  names.add('Basanta');

  print(names.elementAt(2));

  print('');

  names.removeAt(
      0); //as I removed the name at 0, other names are shifted by 1. postion(n-1)
  print(names.elementAt(
      2)); // previously element 2 was 'Suzan' and now it is 'Manish'.

  print('');

  for (String elements in names) {
    print(elements);
  }
}
