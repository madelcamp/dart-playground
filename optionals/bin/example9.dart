void main(List<String> args) {
  String? lastName;
  print(lastName);

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  print(lastName);

  final foo = lastName?.contains('Bar');

  if (lastName?.contains('Bar') ?? false) {
    print('Last name contains Bar');
  }
  if (lastName?.contains('Bar') == true) {
    print('Last name contains Bar');
  }
}
