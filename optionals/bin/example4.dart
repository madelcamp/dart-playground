void main(List<String> args) {
  // Nullable or optionals values by default are actually null

  // Invalid example. "a" must be initialized before it can be used.
  // int a;
  // print(a);

  String? lastName;
  print(lastName);

  // Null aware assignment operator (it's a compound assignment operator)

  String? name;

  // Null aware assignment operator (it's a compound assignment operator)
  // Asignns the value on the right, to the variable on the left, only if the
  // variable on the left hand side is NULL
  // name = 'Bazzz';
  name ??= 'Bar';
  print(name);
}
