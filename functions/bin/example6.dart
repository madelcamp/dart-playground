void main(List<String> args) {
  /// You can assign default values to named parameters, wether
  /// they're optional or not

  describe();

  /// if you pass in "null" if will be used, instead of the default value
  /// unless the function is not-nullable.
  describe(something: null);
  describe(something: 'Hello, Dart!');
}

void describe({String? something = 'Hello, world!'}) {
  print(something);
}
