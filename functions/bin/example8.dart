void main(List<String> args) {
  // doSomethingWith(); // Invalid code
  doSomethingWith(name: 'Foo');
  // doSomethingWith(name: null); // Invalid code
  // you'd be able to paas in null if the function were nullable
}

void doSomethingWith({required String name}) {
  print('Hello $name');
}
