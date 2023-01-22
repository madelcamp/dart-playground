void main(List<String> args) {
  /// Optional positional arguments can be optional and be ommited or they can
  /// be non-optional and require default.
  /// To create optional positional parameters you enclose them with []
  /// brackets

  makeUpperCase();
  makeUpperCase(null);
  makeUpperCase('Foo');
  makeUpperCase('Foo', 'Bar');
  makeUpperCase(null, 'Bazzz');
}

// An Optional, optional positional parameter
// Normal positional parameters cannot have default values, but if you want
// to have them, then you'd need to use optional positional parameters, using
// [] brackets
// Any positional parameter inside the square bracket that doesn't have a
// default value should be optional, meaning, null will be assigned to this
// name
void makeUpperCase([String? name, String lastName = 'Bar']) {
  print(name?.toLowerCase());
  print(lastName.toUpperCase());
}
