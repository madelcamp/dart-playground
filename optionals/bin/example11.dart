void main(List<String> args) {
  // You can unwrap multiple values at the same time.
  // You can unwrap multiple optionals

  print(getFullName(null, null));
  print(getFullName('Mario', null));
  print(getFullName(null, 'Del Campo'));
  print(getFullName('Mario', 'Del Campo'));
}

String getFullName(String? firstName, String? lastName) =>
    withAll([firstName, lastName], (names) => names.join()) ?? 'Empty';

/// A function that takes a list of optional values and then calls a
/// callbakc function if all of those values are not null.
///
/// T? represents any object

T? withAll<T>(List<T?> optionals, T Function(List<T>) callback) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
