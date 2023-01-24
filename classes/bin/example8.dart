/// Factory constructors can create instances of their subclasses
/// A normal constructor of a class can only create an instance of that class
/// in question.
/// A factory constructor can create an instance of subclasses, which is its
/// main power
void main(List<String> args) {
  print(Vehicle.car());
  print(Vehicle.truck());
}

class Vehicle {
  const Vehicle();

  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
