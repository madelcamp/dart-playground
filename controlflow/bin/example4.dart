void main(List<String> args) {
  const names = ['Jhon', 'Paul', 'George', 'Ringo'];
  var counter = 0;
  // Executing the condition at the beggining.
  while (counter < names.length) {
    // print(names[counter++]);
    print(names[counter]);
    counter++;
  }
  print("===========");
  counter = names.length - 1;
  while (counter >= 0) {
    print(names[counter]);
    counter--;
  }

  // counter = names.length;
  // while (--counter >= 0) {
  //   print(names[counter]);
  // }

  print("===========");
  counter = 0;
  do {
    print(names[counter++]);
    if (counter == 2) {
      break;
    }
  } while (counter < names.length);

  print("===========");
  counter = 0;
  do {
    final name = names[counter++];
    if (name == 'George') {
      continue;
    } else {
      print(name);
    }
  } while (counter < names.length);
}
