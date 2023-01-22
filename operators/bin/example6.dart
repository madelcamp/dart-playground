void main(List<String> args) {
  // print('Hello ' + 2); does't makes sense

  // Compound assigment operator
  var myAge = 20;
  // value is assigned and returned, so it gets into
  //the print evaluation
  print(myAge = 30); // Asigning back to myAge and returning the value
  print(myAge);

  print("==========");

  print(myAge ~/ 2); // truncating division, NOT ASSIGNING back to myAge
  print(myAge);
  print(myAge ~/= 2); // truncating division, ASSIGNING back to myAge
  print(myAge);

  print("==========");

  print(myAge *= 2); // returning the value and assigning it back to myAge
  print(myAge);

  print("==========");

  print(myAge += 4); // returning the value and assigning it back to myAge
  print(myAge);

  print("==========");

  print(myAge &= 2);
  print(myAge);

  /// (0000 0000 0010 0010) &
  /// (0000 0000 0000 0010)
  /// results in
  /// (0000 0000 0000 0010)

  print("==========");

  print(myAge |= 4);
  print(myAge);

  /// (0000 0000 0000 0010) |
  /// (0000 0000 0000 0100)
  /// results in
  /// (0000 0000 0000 0110)

  print("==========");

  print(myAge ^= 10); // Bitwise XOR
  print(myAge);

  /// (0000 0000 0000 0110) |
  /// (0000 0000 0000 1010)
  /// results in
  /// (0000 0000 0000 1100)

  print("==========");

  print(myAge -= 10);
  print(myAge);
}
