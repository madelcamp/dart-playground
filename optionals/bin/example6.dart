void main(List<String> args) {
  // You can get datatypes that are nullable even inside of them.
  // These are container datatypes
  List<String?>? names; // Nullable insides and outside
  names?.add('Foo'); // if name is NOT NULL, then use this function
  names?.add(null);
  print(names);

  final String? first = names?.first;
  print(first ?? 'No first name found');

  // Bug in dart. This will crash your application.
  // List<String> names2 = [];
  // final bla = names2.first;
  // print(bla);

  // this is a fix
  // List<String> names2 = [];
  // final bla = names2.isEmpty ? null : names2.first;
  // print(bla);

  // Another fix with issues
  // List<String> names2 = [];
  // final bla = names2.firstOrNull;
  // print(bla);

  /// local nullable variables get promoted to not-nullable when assigned to a
  /// non-null value.
  names = [];
  names.add('Baz');
  names.add(null);
  print(names);
}
