void main(List<String> args) {
  // Maps are key-value collections
  // The key need to be unique within the map
  final info = {'name': 'Foo', 'age': 10};
  print(info);
  print(info['name']);
  print(info['age']);

  print("==================");

  print(info.keys);
  print(info.values);

  print("==================");

  // If you want to Add a key-value pair value only if that key doesn't exists.
  info.putIfAbsent('height', () => 180);
  info.putIfAbsent('height', () => 190);

  // If you don't care wether a key exists in a map before adding it
  // It will modify the value if that key already exists.
  // It will create the key-value pair if it doesn't exists.
  info['height'] = 190;
  print(info);

  print("==================");

  // Iterating over the entries of a map
  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
    print("****");
  }

  print("==================");

  if (info.containsKey('height')) {
    print("Height is ${info['height']}");
  } else {
    print("Height is not found");
  }

  print("==================");

  // You can try to retrieve the value of a non-existing key. This will just
  // return null. The program won't crash.
  print(info['weight']);

  print("==================");

  //maps can value keys and values of any type
  final mapWithIntKeys = {
    10: 20,
    30: 40,
  };
  print(mapWithIntKeys);
  print(mapWithIntKeys[10]);
}
