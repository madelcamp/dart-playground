void main(List<String> args) {
  // You can return functions from functions
  final foo = doSomething(10, 20)();
  print(foo);
}

// A function that returns a functionthat returns an int
int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;
