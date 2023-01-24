/// Inhereting constructors. Constructors are special functions that are not
/// inhereted by default. All methods are inhereted, unless they are special
/// methods.
void main(List<String> args) {
  final mom = Mom();
  print(mom.role);
  final dad = Dad();
  print(dad.role);
}

enum Role { mom, dad, son, daughter, granpa, grandma }

class Person {
  final Role role;

  const Person({required this.role});
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
