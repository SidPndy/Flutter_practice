void main() {
  Function myMarks(maths, science, opt) {
    print('My marks in math science and opt are $maths, $science, $opt');
    int total = maths + science + opt;
    print('The grand total is $total');
    double percent = total / 3;
    print('The percentage is $percent');
  }

  myDetails('Siddhartha Pandey', myMarks);
}

void myDetails(String name, Function details) {
  print('My name is $name');
  details(90, 70, 85);
}
