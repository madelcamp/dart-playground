void main(List<String> args) {
  sayHelloTo();
  sayHelloTo(name: null);
  sayHelloTo(name: 'Foo');
}

/// When named parameters in dart are in curly brackets, your parameter need to
/// either have default values or they need to be optional. These type of
/// parameters must always have a value. Besides, in this situation, the call
/// side doesn't have to necessarily pass a value.
void sayHelloTo({String? name = 'Foo'}) {
  print('Hello, $name!');
}
