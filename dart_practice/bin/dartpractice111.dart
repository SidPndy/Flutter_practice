void main() {
  print(sphere.pi);

  area.calc();
}

class sphere {
  static const double pi = 3.14;
}

class area extends sphere {
  static int a = 3;
  static void calc() {
    print('Calculate the area of sphere');
  }
}
