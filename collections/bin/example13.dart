void main(List<String> args) {
  final string = 'abracadabra';
  var result = '';
  for (final char in string.split('')) {
    if (char == 'a' || char == 'b' || char == 'c') {
    } else {
      result += char;
    }
  }
  print(result);

  var result2 = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }..removeAll({null});

  var result3 = result2.toList();

  print(result3);
}
