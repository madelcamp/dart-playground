void main(List<String> args) {
  /// Switches in dart have a concept called "fall through"

  final vehicle = VehicleType.motorcycle;

  switch (vehicle) {
    case VehicleType.motorcycle:
    case VehicleType.bicycle:
    case VehicleType.car:
      print('Most common personal vehicles');
      break;
    case VehicleType.truck:
      print('Usually used for work');
      break;
  }
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}
