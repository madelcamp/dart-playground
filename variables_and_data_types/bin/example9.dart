void main(List<String> args) {
  const thisList = [1, 2, 3];
  final thatList = thisList;
  print(thisList);
  print(thatList);
  //Invalid operation. You cannot initialize a constant with a final variable.
  // const someList = thatList;
}
