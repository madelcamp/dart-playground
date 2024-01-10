void main(List<String> args) {
  /// You can use the "!" exclamation mark operator, to force a nullable value
  /// to be unwrapped. This is unsafe an causes your program to crash, if the
  /// value is null.
  final String? firstName = null; //finals should be set to a value before they
  //are used

  /// I want to force read the value. I don't care what's in this variable,
  /// wether if it's null or not.
  /// I want you to read its value. I want you to read its content.
  // final foo = firstName!; // foo is not an optional value anymore, crash
  // print(firstName!); // I want to force read the value

  // above crashes because you cannot read the content of null.

  // don't do this! you should not write code like this, because is dangerous.
  try {
    final String? firstName = null;
    print(firstName!);
  } catch (e) {
    print(e);
  }

  // A lot better way
  try {
    print(firstName ?? 'No names found');
  } catch (e) {
    print(e);
  }
}
