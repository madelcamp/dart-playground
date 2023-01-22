void main(List<String> args) {
  /// You can use the "!" exclamation mark operator, to force a nullable value
  /// to be unwrapped. This is unsafe an causes your program to crash, if the
  /// value is null.
  final String? firstName = null;

  /// I want to force read the value. I don't care what's in this variable,
  /// wether if it's null or not.
  /// I want you to read its value. I want you to read its content.
  // final foo = firstName!;
  // print(firstName!); // I want to force read the value

  // don't do this!
  // try {
  //   final String? firstName = null;
  // } catch (e) {
  //   print(e);
  // }

  try {
    print(firstName ?? 'No names found');
  } catch (e) {
    print(e);
  }
}
