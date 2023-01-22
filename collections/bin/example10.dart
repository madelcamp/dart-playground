import 'dart:collection';

void main(List<String> args) {
  // If you want to create your own list, you can follow this example.
  // The purpouse of a "safe list" is to fix a few problems that normal lists
  // have in dart

  // Example of why normal lists are not so safe.

  // final List<String> names = [];
  // print(names.first);

  const notFound = 'NOT_FOUND';
  const defaultString = 'DEFAULT_VALUE';

  final myList = SafeList(
    defaultValue: defaultString,
    absentValue: notFound,
    values: ['Bar', 'Baz'],
  );

  print(myList[0]);
  print(myList[1]);
  print(myList[2]);

  print("====================");

  print(myList);
  myList.length = 4;
  print(myList);

  print("====================");

  myList.length = 0;
  print(myList);
  print(myList.first);
  print(myList.last);
}

// creating the safe list
class SafeList<T> extends ListBase {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(List.filled(newLength - _list.length, defaultValue));
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
