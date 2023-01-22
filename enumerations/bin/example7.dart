void main(List<String> args) {
  AnimalType.cat
    ..jump()
    ..run();

  AnimalType.dog
    ..jump()
    ..run();

  AnimalType.rabbit
    ..jump()
    ..run();
}

/// You can also add functions to enumerations both inside the enum and
/// outside the enum
enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print('$name is running...');
  }
}

// You can also create extensions on enumerations.
extension Jump on AnimalType {
  void jump() {
    print('$this is jumping...!');
  }
}
