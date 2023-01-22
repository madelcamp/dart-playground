/// Late instance variables should not be initialized in the constructor,
/// otherwise, they won't be lazy
void main(List<String> args) {
  final marioDC = Person(name: 'Mario Del Campo');
  final lizaLucka = Person(name: 'Liza Luckasheva');
  final delCampoLuckashevaFamily = RightImpFamily(
    members: [marioDC, lizaLucka],
  );
  final giseleB = Person(name: 'Gisele Bundchen');
  final delCampoBundchenFamily = WrongImpFamily(
    members: [marioDC, giseleB],
  );
  print(delCampoBundchenFamily);
  print(delCampoBundchenFamily.membersCount);

  print("============================");

  print(delCampoLuckashevaFamily);
  print(delCampoLuckashevaFamily.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class RightImpFamily {
  final Iterable<Person> members;
  // This is how you should be using late variables
  late int membersCount = getMembersCount();

  RightImpFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class WrongImpFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImpFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
