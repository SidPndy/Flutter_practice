void main() {
  List<int> numList = List(5);
  numList[0] = 23;
  numList[1] = 25;
  numList[2] = 29;
  numList[3] = 45;
  numList[4] = 46;

  print('');

  for (int element in numList) {
    print(element);
  }

  print('');

  for (int i = 0; i < numList.length; i++) {
    print(numList[i]);
  }

  print('');

  numList.forEach((elements) {
    print(elements);
  });
}
