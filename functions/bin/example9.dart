void main(List<String> args) {
  /// Named required parameters can also be optional, but they cannot have
  /// default values. If they're required, they cannot have default values.

  doSomethingWithAge(age: 20);
  doSomethingWithAge(age: null);
}

void doSomethingWithAge({required int? age}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years, you will be $in2Years');
  } else {
    print('You did not tell me your age');
  }
}
