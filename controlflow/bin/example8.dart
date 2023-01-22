import 'dart:io';

void main(List<String> args) {
  // Switching over integer values
  do {
    stdout.write('Enter your name or type "exit": ');
    final input = stdin.readLineSync() ?? '';

    if (input.toLowerCase() == 'exit') {
      break;
    } else if (input.isEmpty == true) {
      print('Invalid name. Try again');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'mario':
      case 'liza':
        stdout.writeln('Hello $input. You have a great name!');
        break;
      default:
        stdout.writeln('You are $input');
        break;
    }
  } while (true);
}
