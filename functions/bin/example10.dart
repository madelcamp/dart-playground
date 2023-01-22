void main(List<String> args) {
  /// Names parameters can appear in any order you want.
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'Mario');
  describePerson(name: 'Mario', age: 20);
  describePerson(age: 20, name: 'Mario');
}

void describePerson({String? name, int? age}) {
  print('Hello $name, you are $age years old.');
}
