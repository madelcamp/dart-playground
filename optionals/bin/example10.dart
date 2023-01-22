void main(List<String> args) {
  /// You can call a function conditionally if the left side is null

  // it optionally return a string or a null.
  String? getFullNameOptional() {
    return null;
  }

  String getFullName() {
    return 'Foo Bar';
  }

  final String fullName = getFullNameOptional() ?? getFullName();
  print(fullName);

  print("===========");

  final someName = getFullNameOptional();
  someName.describe();
}

/// Extending optional types
/// The goal is to create a function that can describe an optional value.
extension Describe on Object? {
  //Basically adding a function on top of all optional values or nullable values
  void describe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
