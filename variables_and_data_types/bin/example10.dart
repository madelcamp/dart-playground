void main(List<String> args) {
  // Late variables are initialized only when they are used.
  late final myValue = 10;
  print(myValue);

  late final yourValue = getValue();
  print('We are here');
  print(yourValue);
}

int getValue() {
  print('getValue called');
  return 10;
}
