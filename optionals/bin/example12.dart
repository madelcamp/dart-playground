void main(List<String> args) {
  /// Flat map is a function that allows you to drill down within an optional
  /// and grab its value and map it to another data type, perhaps completely
  /// to another datatype or a different value of the same type, only if that
  /// optional is not null. But if it is null, then flatmap doesn't do
  /// anything, it just returns null.
  ///

  /// Flat map is unwrapping and mapping an optional value.

  String? firstName = 'Mario';
  String? lastName = 'Del Campo';

  final fullName = firstName.flatMap(
        (f) => lastName.flatMap(
          (l) => '$f $l',
        ),
      ) ??
      'Either first or last name or both are null';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(R? Function(T) callback) {
    final shadow = this; //Shadowing becase of a shortcoming of dart.
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
