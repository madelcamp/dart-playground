/// Mixins are like separate entities that can bring functionality to
/// existing classes and enumerations. Mixins allow you to create
/// functionality or functions variables properties inside the mixin and then
/// bringin the mixing into various enumerations or classes. In that way, you
/// can have kinda of like simulated multiple inheritance.
void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10.0);
  person.walk(speed: 5.0);
}

mixin HasSpeed {
  /// With the "abstract" keywords, it's a contract. whicever type of enum or
  /// class that implements this or actually brings it in as a mixin, has to
  /// have this property, therefore, any other mixin implement on top of this
  /// mixin can have access to this property.
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

/// When it comes to mixins, we say "with"
class Person with HasSpeed, CanWalk, CanJump {
  @override
  double speed;

  Person() : speed = 0.0;
}
