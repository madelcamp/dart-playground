void main(List<String> args) {
  var address = '12 Main St';
  print(address);
  address = '456 Main St';
  print(address);
  address = address.replaceAll('Main', 'Bla');
  print(address);
}
