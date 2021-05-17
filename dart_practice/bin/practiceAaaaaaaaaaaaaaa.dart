void man() {
  var ok = (a, b) {
    print('Fullname is ${a + b}');
  };

  app('Siddhartha', ok);
}

void app(String name, Function fullname) {
  fullname('Siddhartha', 'Pandey');
}
