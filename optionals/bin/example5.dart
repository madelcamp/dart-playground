void main(List<String> args) {
  // Null aware operator
  /// if you want to access proterties of a variable that is an optional, then
  /// you would need to use the null aware operator
  String? lastName;
  print(lastName?.length);

  String? nullName;
  // String? foo;
  print(nullName ?? 'Foo'); // if nullName is NULL, it gest assigned 'Foo'

  final bla = nullName ?? 'Foo';

  print('=======');

  print(lastName ?? 'Foo');
  print(lastName ?? nullName);
  print(lastName ?? nullName ?? 'Bar'); //it takes the non-null value

  final blabla = lastName ?? nullName ?? 'Bar';
}
