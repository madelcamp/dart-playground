void main(List<String> args) {
  // final person1 = Person(name: 'Foo', age: 10);
  // final person2 = Person(name: 'Foo', age: 10);

  // final persons = {person1, person2};
  // print(persons);

  // print(person1.hashCode);
  // print(person2.hashCode);

  final person = Person(name: 'Foo', age: 10);
  final person2 = person;
  print(identical(person, person2));
  final dog = Dog(name: 'Foo', age: 10);

  print(person.hashCode);
  print(dog.hashCode);

  final beings = {person, person2, dog};
  print(beings);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  }); // Constructor

  @override
  String toString() => 'Person{name: $name, age: $age}';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  }); // Constructor

  @override
  String toString() => 'Dog{name: $name, age: $age}';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
