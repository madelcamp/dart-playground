/// Methods are functions that are implemented at the class level.
void main(List<String> args) {
  final car = Car();
  car.drive(speed: 30);
  print('Speed is ${car.speed}');
  car.drive(speed: 40);
  car.stop();
  print(car.speed);
}

class Car {
  // This property can be both read and set.
  int speed = 0;

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
    print('Stopped');
  }
}
