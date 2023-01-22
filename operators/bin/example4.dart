void main(List<String> args) {
  // binary infix operators
  const age = 50;
  print(age + 20); // it's NOT changing te value of the "age" variable
  print(age - 20); // Idem for all
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20);
  print(age == 20);
  print(age != 20);

  print(age > 20); //true
  print(age < 20); //false
  print(age >= 20); //true
  print(age <= 20); //false

  // bitwise infix operators

  // bitwise AND
  // 1 & 1 = 0, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
  print(age & 20);

  /// 0000 1010
  /// 1011 1000
  /// results in:
  /// 0000 1000
  ///
  /// // bitwise OR
  // 1 | 1 = 1, 0 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0
  print(age | 20);

  // bitwise operators are usually meaningless, unless you're working
  // specifically with bits.

  /// // bitwise XOR
  // 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0

  // bitwise shift operators
  print(age << 20); // bitwise left shift, 20 times.
  print(age >> 20); // bitwise rightshift, 20 times.

  /// 0110 0011
  /// shift left by 1
  /// 1100 0110
  ///
  /// sift left by 2
  /// 1000 1100
}
