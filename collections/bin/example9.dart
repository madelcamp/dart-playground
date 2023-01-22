// There are unmodifiable views for pretty much all the collections.

/// They are really useful when, for example, you have a class that exposes
/// a list. If you don't want anyone to be able to modify that list, the
/// unmodifiable views are useful.

import 'package:collection/collection.dart';

void main(List<String> args) {
  final foo = Person(
    name: 'Foo',
    siblings: [Person(name: 'Bar')],
  );

  foo._siblings?.add(Person(name: 'Baz'));

  try {
    foo.siblings?.add(Person(name: 'Baz'));
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings; // Dart doesn't have real private properties

  // If you expose a sibling's array that is unmodifiable from this class, then
  // the caller won't be able to modify it of course

  // A getter to prevent modification. The return of this getter is
  // UnmodifiableListView<Person>?
  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  // Constructor
  const Person({required this.name, List<Person>? siblings})
      : _siblings = siblings;
}
