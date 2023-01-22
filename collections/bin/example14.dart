import 'dart:math';

import 'package:collection/collection.dart';

void main(List<String> args) {
  /// boollist are like normal list , but they are optimized to consume little
  /// It doesn't have to consume a whole integer for a boolean.
  testBoolList();
  print("========================");

  /// You as a programmer can decide wether 2 keys in a map are the same, using
  /// a canonicalized map. You can decide wether 2 keys can coexist in the
  /// same map.
  testCanonicalizedMap();

  print("========================");

  // Combined iterables.
  // Acombined iterable view is an iterable o f iterables. if the underline
  // iterable changes, the result will reflect those changes as well.
  combinedIterableView();

  print("========================");

  /// A combined list view is a view of a list of lists, and is unmodifiable.

  combinedListView();

  print("========================");

  testCombinedMapView();

  print("========================");

  testMapMerging();
}

void testMapMerging() {
  const info1 = {
    'name': 'Mario',
    'age': 35,
    'sex': 'male',
    'height': 1.84,
  };

  const info2 = {
    'name': 'Liza',
    'age': 24,
    'sex': 'female',
    'height': 1.76,
    'weight': 55,
  };

  final merge = mergeMaps(info1, info2,
      value: (one, two) => Random().nextBool() ? one : two);
  print(merge);
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};

  var combinedMap = CombinedMapView([map1, map2, map3]);
  map1['Foo'] = 20;
  print(combinedMap);
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);

  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e);
  }
}

void combinedListView() {
  final inLoveNames = ['Mario', 'Liza', 'Gisele'];
  final girlNames = ['Farah', 'Ana', 'Alica'];
  final coolNames = ['Eloise', 'Tia', 'Philipa'];

  final names = CombinedListView([inLoveNames, girlNames, coolNames]);

  coolNames.removeAt(0);

  print(names);

  if (names.contains('Mario')) {
    print('Mario is in the list');
  }

  try {
    names.removeAt(0);
  } catch (e) {
    print(e);
  }
}

void combinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];

  var combined = CombinedIterableView([one, two, three]);
  print(combined);
  two.add(40);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(50));
}

void testCanonicalizedMap() {
  final info = {
    'name': 'Mario',
    'age': 21,
    'sex': 'male',
    'bla': 'bla',
    'address': 'Moscow',
  };

  final canonMap = CanonicalizedMap.from(info, (key) => key.split('').first);
  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  print(boolList);
  boolList[3] = true;

  if (boolList[3] == true) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }

  print(boolList);

  boolList.length *= 2;
  print(boolList);
}
