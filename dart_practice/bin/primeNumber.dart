import 'dart:io';

void main() {
  int a = 0, n = 5;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      a = a + 1;
    }
  }
  if (a == 2) {
    print("$n is prime number");
  } else {
    print("$n is not primne number");
  }
}
