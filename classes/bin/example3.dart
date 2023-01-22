void main(List<String> args) {
  // subclassing is kinda like inheriting logic from one class to another.
  final v = Vehicle(4);
  print(v);
  print(v.toString());

  print(Car());
  print(Bicycle());
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override // creating your own implementation of an existing function
  String toString() {
    if (runtimeType == Vehicle) {
      return 'Vehicle with $wheelCount wheel';
    } else {
      return super.toString();
    }
  }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
