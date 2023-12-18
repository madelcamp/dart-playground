void main(List<String> args) {
  /// 4 types of operators
  /// unary prefix, unary postfix, binary infix, compound assigment

  // Unary prefix
  var age = 30;
  print(--age); // it is mutating the value of age as well, and returning.
  print(!true); // it is not changing the contents of true, only returning.
  print(!false); // it is not changing the contents of true, only returning.
  print(++age); // it is mutating the value of age as well, and returning.
  print(age);

  // Unary bitwise complement prefix operator
  print(~1); // flips the values of binary representation

  /// (0000 0000) (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111) (1111 1111) (1111 1111) (1111 1110)

  print(-age); // it negates it and returns the value, but it doesn't mutate
  //the value
  print(age);
  print(-(-age));
}
