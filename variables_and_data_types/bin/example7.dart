void main(List<String> args) {
  final myList = [1, 2, 3];

  ///Incorrect code. (Constants cannot be modified)
  // myList = [4, 5, 6];

  myList.add(5);
  print(myList);
}
