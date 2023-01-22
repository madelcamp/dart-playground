void main(List<String> args) {
  /// Optionality in dart is the ability to have a value or to not have a value
  /// So a variable contains a value or it doesn't
  /// An example of an optional string below:
  const String? name = null;
  print(name);
  print(null); // null it denotes the absence of a value

  // You can't do this, it's not allowed in dart
  // const String lastName = null;
}
