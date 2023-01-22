void main(List<String> args) {
  // Late variable are initialized when they are first used.
  print('Before');
  late String name = provideName();
  print('After');
  print(name);
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}
