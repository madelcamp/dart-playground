import 'example6.dart';

void main(List<String> args) {
  // You can also mix various types of parameters in dart.
  decribeFully('Foo');
  decribeFully('Foo', lastName: 'Bazzz');
}

void decribeFully(String firstName, {String? lastName = 'Bar'}) {
  print('Hello $firstName $lastName');
}
