void main(List<String> args) {
  // with modern loops you usually lose access to the index.
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (var name in names) {
    print(name);
  }
  print("===============");
  // In modern For loops you have access to the "continue" keyword.
  for (final name in names) {
    if (name.startsWith('B')) {
      continue;
    }
    print(name);
  }
  print("===============");
  // You can also use "break" kwyword.
  for (final name in names) {
    if (name == 'Baz') {
      break;
    }
    print(name);
  }
  print("===============");
  // for (final name in names) {
  //   if (name == 'Qux') {
  //     continue;
  //   }
  //   print(name);
  // }

  for (final name in names.reversed) {
    print(name);
  }
  print("===============");
  for (var i = 0; i < 9; i++) {
    print(i);
  }
  print("===============");

  // creating something sort of like a "range"
  for (int value in Iterable.generate(20)) {
    print(value);
  }
}
