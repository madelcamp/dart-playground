void main(List<String> args) {
  // Mix iterables and lists
  const names = ['John', 'Jane', 'Jack', 'Jill'];
  final upperCaseNAmes = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });
  for (final name in upperCaseNAmes.take(3)) {
    print(name);
  }
}
