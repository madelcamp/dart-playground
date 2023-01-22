void main(List<String> args) {
  // Functions can also become arrow functions and omit the return keyword
  print(minus());
  print(minus(30, 20));
  print(minus(20, 30));

  // First class fucntions are functions in dart that can be passed into
  // other functions.
  print(performOperation(10, 20, add));
  print(performOperation(10, 20, minus));
}

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;
