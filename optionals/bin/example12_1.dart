// Improved version of the code

void main(List<String> args) {
  String? firstName = 'Mario';
  String? lastName = 'Del Campo';

  final fullName = firstName != null && lastName != null
      ? '$firstName $lastName'
      : 'Either first or last name or both are null';
  print(fullName);
}
