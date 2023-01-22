void main(List<String> args) {
  // Assigning a late variable to a non-late variable, resolvers the late
  // variable immediately.
  print('late fullName is being initialized');
  late final fullName = getFullName();
  // print('after');
  // print(fullName);

  late final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

String getFullName() {
  print('getFullName() is called');
  return 'Mario Del Campo';
}
