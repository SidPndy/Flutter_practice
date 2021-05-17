void main() {
  int a = 0;
  for (int i = 1; i <= 200; i++) {
    for (int j = 1; j <= 200; j++) {
      if (i % j == 0) {
        a = a + 1;
      }
    }
    if (a == 2) {
      print(i);
    }
  }
}
