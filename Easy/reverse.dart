import 'dart:io';

// void main() {
//   stdout.write("Enter the number or string to check? ");
//   String x = stdin.readLineSync()!;
//   String result = reverseProgram(x);
//   print("The reverse of $x is $result");
// }

// String reverseProgram(String y) {
//   String rev = "";
//   for (int i = 0; i < y.length; i++) {
//     rev = y[i] + rev;
//   }
//   return rev;
// }

// input.split(''): This splits the input string into a List<String>, where each element is a single character.
// The empty string '' as the delimiter ensures that it splits between every character.
// .reversed: This returns an Iterable (a sequence) of the characters in reverse order.
// It doesn't create a new list in memory immediately; it's a lazily evaluated operation.
// .join(''): This concatenates the characters from the reversed Iterable back into a single string,
// using an empty string '' as the separator (meaning no characters are inserted between the joined characters).

void main() {
  stdout.write("Enter the string to reverse: ");
  String inputString = stdin.readLineSync() ?? "";

  if (inputString.isNotEmpty) {
    String reversedString = reverseString(inputString);
    print("The reversed string of $inputString is $reversedString");
  } else {
    print("Invalid input!, Please enter a non-empty string");
  }
}

String reverseString(String inputString) {
  return inputString.split('').reversed.join('');
}
