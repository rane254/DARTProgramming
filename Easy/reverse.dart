import 'dart:io';

void main() {
  stdout.write("Enter the number or string to check? ");
  String x = stdin.readLineSync()!;
  String result = reverseProgram(x);
  print("The reverse of $x is $result");
}

String reverseProgram(String y) {
  String rev = "";
  for (int i = 0; i < y.length; i++) {
    rev = y[i] + rev;
  }
  return rev;
}
