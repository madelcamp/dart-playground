void main(List<String> args) {
  print(doNothing());
}

// By saying "void", the main function won't be able to consume the value
dynamic doNothing() {}

// if you don't specify any return type for a function, by default dart
// takes the dynamic data type for it.

// Every function does return null if you don't specify any value for it.
