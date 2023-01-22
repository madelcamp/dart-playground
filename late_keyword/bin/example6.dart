void main(List<String> args) {
  // Late variables that depend on late final variables
  final person = Person();

  /// Doing code like this is against the dart guidelines for using late
  /// variables. You should not write code that tries to undertand wether a
  /// late variable has a value or not. If that is what you're after, then
  /// you need to use optionals.
  /// You should not worry about if this contracted has not been fullfilled.
  try {
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);
}

class Person {
  // If you make make them "late" variable, then you don't have to use a
  // constructor.
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
