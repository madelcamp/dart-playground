void main(List<String> args) {
  /// Clases are like bluprints for information, blueprints of logic. You can
  /// create this logic in one place and then to reuse this logic in many
  /// other places. The blueprint is called a class, the copies are called
  /// instances.

  const person1 = Person(name: 'Mario', age: 20);
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;

  /// A constructor is a special function, usually with the name of the class
  /// itself, whose job is to create an instance of this person.
  /// Every class needs to have a constructor when it has properties.
  const Person({required this.name, required this.age});
}
