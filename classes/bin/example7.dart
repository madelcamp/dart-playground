void main(List<String> args) {
  print(Car.carsInstantiated);
  Car(name: 'My Car');
  print(Car.carsInstantiated);
  Car(name: 'Your Car');
  print(Car.carsInstantiated);
}

class Car {
  static int _carsInstantiated = 0;

  static int get carsInstantiated => _carsInstantiated;
  static void _incrementCarsInstantiated() => _carsInstantiated++;

  final String name;

  Car({required this.name}) {
    _incrementCarsInstantiated();
  }
}
