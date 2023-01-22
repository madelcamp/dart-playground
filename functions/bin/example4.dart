void main(List<String> args) {
  greet();

  // You would never invoke a function that returns void like this:
  // final void value = greet();
  // print(value);
}

void greet() {
  print('Greetings!');
}
