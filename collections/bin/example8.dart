import 'package:collection/collection.dart';

void main(List<String> args) {
  // How to create an unmodifiable map view
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': 'Main Street',
      'city': 'New York',
    }
  };

  final info2 = UnmodifiableMapView(info);

  info.addAll(
    {'phone': '123-456-7890'},
  );
  print(info);

  try {
    info2.addAll(
      {'phone': '123-456-7890'},
    );
  } catch (e) {
    print(e);
  }

  // There are unmodifiable views for pretty much all the collections.

  /// They are really useful when, for example, you have a class that exposes
  /// a list. If you don't want anyone to be able to modify that list, the
  /// unmodifiable views are useful.
}
