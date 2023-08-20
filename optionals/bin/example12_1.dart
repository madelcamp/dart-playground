// Improved version of the code

void main(List<String> args) {
  String? firstName = 'Mario';
  String? lastName = 'Del Campo';

  final fullName = lastName != null
      ? '$firstName $lastName'
      : 'Either first or last name or both are null';
  print(fullName);
}
