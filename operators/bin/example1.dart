void main(List<String> args) {
  const age1 = 90;
  const age2 = 30;
  print(age1 + age2);
  print(age1 + age2 + 30);
  print(age1 - age2);
  print(age1 * age2);

  // If you divide 2 number, the result is always a double, by default.
  const double divided = age1 / age2;
  print(divided);

  //Truncating divition operator
  const int intDivided = age1 ~/ age2;
  print(intDivided);
}
