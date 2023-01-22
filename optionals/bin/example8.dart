void main(List<String> args) {
  /// You can promote a type to NOT-NULLABLE, by checking first
  /// if it is null or not.
  final String? firstName = null;

  if (firstName == null) {
    print('firstName value is null');
  } else {
    /// You don't have to worry about checking with "?" nullable variables,
    /// because you already checked the variable against a null, in the if
    /// statement.
    final int length = firstName.length;
    print(length);
  }
}
