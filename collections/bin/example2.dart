import 'package:collection/collection.dart';

// Sets are collections of unique values.

void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Qux'};
  names.add('Foo');
  print(names);

  print("=================");

  // creating a set out of a list, using the spread operator "..."
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  final uniqueNames = {...names2};
  print(names2);
  print(uniqueNames);

  print("=================");

  // Sets work with hashable objects.
  // A hash code with equality determines wether a value can appear in a set
  // more than once or not.
  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);

  print("=================");

  // Includes a value or not.
  if (names.contains('Foo')) {
    print('Found Foo');
  } else {
    print('Did not find Foo');
  }

  print("=================");

  // Equality with "final" works differently that equality with const.
  // Equality also works differently with sets.
  final ages1 = {20, 40, 30};
  final ages2 = {20, 30, 40};
  // since the values in comparison are not the same instances, they are not
  // considered to be equal.
  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print("=================");

  // if you wanna compare 2 sets, use SetEquality, from the collection package
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print("=================");

  final ages3 = {40, 30, 20};
  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
}
