void main(List<String> args) {
  // Classes can have different types of constructors.
  const me = Person('Mario', 20);
  print(me.name);
  print(me.age);

  print("=" * 30);

  const foo = Person.foo();
  print(foo.name);
  print(foo.age);

  print("=" * 30);

  const bar = Person.bar(18);
  print(bar.name);
  print(bar.age);

  print("=" * 30);

  const baz = Person.other();
  print(baz.name);
  print(baz.age);

  print("=" * 30);

  const liza = Person.other(name: 'Liza');
  print(liza.name);
  print(liza.age);

  const mario = Person.other(name: 'Mario', age: 21);
  print(mario.name);
  print(mario.age);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  // A named constructor
  const Person.foo()
      : name = 'Mario',
        age = 20;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({String? name, int? age})
      : name = name ?? 'Foo',
        age = age ?? 20;
}
