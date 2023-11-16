void main(List<String> args) {
  String name = 'Foo';
  var address = '';

  address = name;
  // address = 20; invalid code
  print(address);
  print(name);

  /// Invalid operation
  /// const age = 20;
  /// address = age;
}
