void main(List<String> args) {
  const thisList = [1, 2, 3];
  final thatList = thisList;
  print(thisList);
  print(thatList);
  //Invalid operation
  // const someList = thatList;
}
