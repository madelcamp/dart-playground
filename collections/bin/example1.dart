void main(List<String> args) {
  const names = ['Mario', 'Liza', 'Seth', 'Bar', 'Kathy', 'Baz'];
  // Print a list
  for (final name in names) {
    print(name);
  }

  print("====================");

  // Reverse a List
  for (final name in names.reversed) {
    print(name);
  }

  print("====================");

  // Contains (case sensitive)
  if (names.contains('Mario')) {
    print("Mario is in the list");
  }

  print("====================");

  // Where. It's like a filter method.
  for (final name in names.where((String value) => value.startsWith('B'))) {
    print(name);
  }

  print("====================");

  // Subscripts on Lists. You go and peek at the list at a specific index.
  print(names.elementAt(0));
  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);
  print(names[4]);
  print(names[5]);

  // Not recommended in most cases. Better is the check the length of the
  // string before.
  try {
    print(names[8]);
  } catch (e) {
    print(e);
  }

  print("====================");

  // Extracting subranges from lists.
  // Every list has a function called forEach.
  names.sublist(1).forEach(print);
  names.sublist(1, 3).forEach(print);
  names.sublist(2, 3).forEach(print);

  print("====================");

  // Mutating a list
  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);

  print("====================");

  // You can also compare lists of each other with the correct ordering.
  // As long as you have the correct ordering, you can compare the lists.
  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];

  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    print('names1 and names2 are not equal');
  }

  print("====================");

  // Mapping
  names.map((str) => str.toUpperCase()).forEach(print);
  names.map((str) => str.length).forEach(print);

  print("====================");

  // Reduce an entire list to a single value
  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      int previousValue,
      int thisValue,
    ) =>
        previousValue + thisValue,
  );
  print(sum);

  print("====================");
  // Summing the legth of each name
  final totalLength = names.fold(
    0,
    (
      totalLength,
      str,
    ) =>
        totalLength + str.length,
  );
  print(totalLength);

  print("====================");

  final result = names
      .fold(
        '',
        (
          result,
          str,
        ) =>
            '$result ${str.toUpperCase()}',
      )
      .trimLeft();
  print(result);
}
