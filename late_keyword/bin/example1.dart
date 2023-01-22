// Hey Dart, this is a variable that is gonna have a value for sure, but I'm not
// gonna assign the value right now. It's kinda like a contract between the
// developer and dart as a programming language.
late String name;

void main(List<String> args) {
  // Late variables are initialized when they're first used!
  try {
    print(name);
  } catch (e) {
    print(e);
  }
  name = 'Foo Bar';
  print(name);
  name = 'Foo Bar2';
  print(name);
}
