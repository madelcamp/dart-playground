void main(List<String> args) {
  // finals only prevent reassigning, but allow modifying.
  final age = [1, 2, 3];
  print(age);

  age.removeAt(0);
  print(age);
}
