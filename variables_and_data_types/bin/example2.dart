void main(List<String> args) {
  // finals only prevent reassigning, but allows modifying internally.
  final age = [1, 2, 3];
  print(age);

  age.removeAt(0);
  print(age);
}
