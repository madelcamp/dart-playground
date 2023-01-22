void main(List<String> args) {
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  final foo = lastName?.contains('Bar');

  if (lastName?.contains('Bar') ?? false) {
    print('Last name contains Bar');
  }
  if (lastName?.contains('Bar') == true) {
    print('Last name contains Bar');
  }
}
