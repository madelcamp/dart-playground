void main(List<String> args) {
  /// There is another simple way of creating iterators inside your functions.
  /// That is using syncronous generators.

  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  // print('Producing Mario');
  yield 'Mario';
  // print('Producing Liza');
  yield 'Liza';
  // print('Producing Gisele');
  yield 'Gisele';
  // print('Producing template names');
  // It's like inyecting the return of another function, here.
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  // print('Producing "Mario"');
  yield 'Foo';
  // print('Producing "Liza"');
  yield 'Bar';
  // print('Producing "Gisele"');
  yield 'Baz';
}
