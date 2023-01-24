/// Abstract classes are bluprints of the blueprints. You can say, for example,
/// that any blueprints has to conform to this certain blueprint.
///
/// There are 2 ways to use an abstract class: by extending or by
/// implementing.
/// Extending works because the vehicle class has default implementation for
/// its methods, and its kind property is not abstract.
/// Implement an abstract class means to re-implement all of its abstrat
/// methods and properties as its implements keywords suggests.
void main(List<String> args) {
  const car = Car();
  print(car.kind);
  car.accelerate();
  car.decelerate();
  const motorcycle = Motorcycle();
  print(motorcycle.kind);
  motorcycle.accelerate();
  motorcycle.decelerate();
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Motorcycle implements Vehicle {
  const Motorcycle();
  @override
  void accelerate() => print('Motorcycle is accelerating...');

  @override
  void decelerate() => print('Motorcycle is decelerating...');

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}

enum VehicleKind { car, truck, motorcycle, bicycle }
