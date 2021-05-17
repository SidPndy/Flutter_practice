void main() {
  String name = 'Siddhartha';

  var nam = () {
    String nam = 'Hari';

    Function nam1 = () {
      String nam1 = 'Pandey';
      print(nam1);
    };
    return nam1;
  };

  Function ok = nam();
  ok(); //nam returns nam1 // nam is assigned to a variable function ok.
}
