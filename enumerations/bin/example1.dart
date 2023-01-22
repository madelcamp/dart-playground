void main(List<String> args) {
  /// Enumerations allow you to create similar objects in one structure

  final woof = Animal(name: 'Woof', type: AnimalType.rabbit);

  if (woof.type == AnimalType.cat) {
    print('Woof is a cat');
  } else {
    print('Woof is not a cat');
  }

  switch (woof.type) {
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}

// You can use your enum as a data type
class Animal {
  final String name;
  final AnimalType type;

  const Animal({required this.name, required this.type});
}
