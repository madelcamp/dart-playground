void main(List<String> args) {
  /// Positional parameters are passed in order and they don't have names
  /// associated with them. They are always required and cannot have default
  /// values. Positional arguments are not placed inside curly brackets.

  sayHelloTo('Mario', 'Liza');
  sayHelloTo('Baz', 'Bar');

  // These are all invalid code
  // sayHelloTo('Foo');
}

void sayHelloTo(String person, String andOtherPerson) {
  print('Hello, $person and $andOtherPerson');
}
