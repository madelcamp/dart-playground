void main(List<String> args) {
  // The goal is to grab default values out of optionals
  print(fullName(null, null));
  print(fullName('Mario', null));
  print(fullName(null, 'Del Campo'));
  print(fullName('Mario', 'Del Campo'));
}

String fullName(String? firstName, String? lastName) =>
    '${firstName.orDefault} ${lastName.orDefault}';

extension Defaultvalues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return '' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  }
}
