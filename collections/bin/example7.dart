import 'package:collection/collection.dart';

void main(List<String> args) {
  // If you wanna protect your lists from being modified, you can use
  // something called "unmodifiable lists views". This comes from the
  // collections package.
  final names = ['John', 'Jane'];
  names.add('Jack');

  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add('Jill');
  } catch (e) {
    print(e);
  }
}
