void main(List<String> args) {
  // Iterables are lazily evaluated lists, pretty much.
  final iterable = Iterable.generate(20, (i) => getName(i));
  print(iterable);

  for (final name in iterable.take(2)) {
    print(name);
  }
}

// Iterables are lazily evaluated and lazily generated
// The generate function is not even called untill you start using a value
String getName(int i) {
  print('Get name got called with parameter $i');
  return 'Jonh #$i';
}
