/// If the calculation of a property is a heavy calculation, maybe it's
/// better to put it in a constructor.
void main(List<String> args) {
  const foo = Person(firstName: 'Foo', lastName: 'Bar');
  print(foo.fullName);
}

/// fullName is calculated everytime you call the fullName getter
class Person {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';

  const Person({required this.firstName, required this.lastName});
}

/// The next implmentation is similar, but with a constructor with an
/// initializer list. Fullname was calculating upon construction an instance
/// of person, then it can't change.

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;

//   const Person({required this.firstName, required this.lastName})
//       : fullName = '$firstName $lastName';
// }
