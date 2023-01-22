void main(List<String> args) {
  // comparison in enumerations
  print(TeslaCars.values);
  print([...TeslaCars.values]
    ..sort()
    ..forEach((element) => print(element.weightInKg)));
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(weightInKg: 2.2),
  modelS(weightInKg: 2.1),
  model3(weightInKg: 1.8),
  modelX(weightInKg: 2.4);

  final double weightInKg;

  const TeslaCars({required this.weightInKg});

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(other.weightInKg);
}
