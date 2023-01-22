// Named parameters don't have to be nullable if they have default values.

void main(List<String> args) {
  doSomethingWith();
  doSomethingWith(name: 'Foo');
  // You can't pass null, because the function is not nullable.
  // invalid code
  // doSomethingWith(null);
}

void doSomethingWith({String name = 'Bar'}) {
  print('Hello, $name!');
}
