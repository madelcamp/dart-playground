void main(List<String> args) {
  // Unary postfix operators
  var age = 40;
  print(age--); // It prints the variable first, then it mutates it.
  print(age);
  print(age++); // It prints the variable first, then it mutates it.
  print(age);
}
