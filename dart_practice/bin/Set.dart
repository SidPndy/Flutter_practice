void main() {
  Set<int> numSet = Set(); //Integer Set
  numSet.add(23);
  numSet.add(34);
  numSet.add(43);
  numSet.add(76);

  numSet.remove(43);
  print(numSet.length);
  print(numSet.isEmpty);
  print(numSet.first);

  print('');

  for (int elements in numSet) {
    print(elements);
  }

  print('');

  numSet.forEach((element) => print(element));

  print('');

  Set<String> continents =
      Set.from(['Asia', 'Antartica', 'Eurpe']); // String Set

  continents.add('South America');
  continents.add('North Ameroca');
  continents.add('Africa');
  continents.add('Australia');

  continents.remove('Antartica');

  print(continents.isEmpty);

  for (String elements in continents) {
    print(elements);
  }
}
