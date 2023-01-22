void main(List<String> args) {
  /// 4 types of operators
  /// unary prefix, unary postfix, binary infix, compound assigment

  // Unary prefix
  var age = 30;
  print(--age); // it is mutating the value of age as well, and returning.
  print(!true); // it is not changing the contents of true, only returning.
  print(!false);
  print(++age);
  print(age);

  // Unary bitwise complement prefix operator
  print(~1); // flips the values of binary representation

  /// (0000 0000) (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111) (1111 1111) (1111 1111) (1111 1111)

  print(-age); // it negates it, but it doesn't returns the value,
  //it doesn't mutate the value
  print(age);
  print(-(-age));
}
