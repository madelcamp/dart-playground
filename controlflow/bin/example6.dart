void main(List<String> args) {
  const info = {
    'name': 'Mario',
    'age': 20,
    'height': 1.8,
    'isMarried': false,
    'address': {
      'street': 'Porto Street',
      'city': 'Lisbon',
      'country': 'Portugal',
    }
  };

  for (final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
