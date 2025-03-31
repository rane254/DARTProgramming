import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  final input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    final vowelCount = countVowels(input);
    print("There are $vowelCount vowels in '$input'.");
  } else {
    print("Invalid input! Please enter a non-empty string.");
  }
}

// int countVowels(String str) {
//   final lowerStr = str.toLowerCase();
//   const vowels = "aeiou"; // Using const for compile-time constant
//   var count = 0;
//
//   for (var i = 0; i < lowerStr.length; i++) {
//     if (vowels.contains(lowerStr[i])) {
//       count++;
//     }
//   }
//
//   return count;
// }

// Explanation of RegExp approach:
// RegExp(r'[aeiou]', caseSensitive: false) creates a regular expression
// that matches any of the characters 'a', 'e', 'i', 'o', or 'u',
// ignoring case (caseSensitive: false). The r prefix creates a "raw string"
// which is good practice for regex patterns.
// allMatches(str) finds all matches of the regex in the input string.
// matches.length returns the number of matches (vowels) found.

int countVowels(String input) {
  final matches = RegExp(r'[aeiou]', caseSensitive: false).allMatches(input);
  return matches.length;
}
