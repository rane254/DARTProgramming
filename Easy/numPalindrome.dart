import 'dart:io';

void main() {
  stdout.write("Enter the number to check? ");
  int? x = int.parse(stdin.readLineSync()!);
  bool? result = reverseProgram(x);
  if (result == true) {
    print("$x is Palindrome");
  } else {
    print("$x is not a Palindrome");
  }
}

bool? reverseProgram(int x) {
  String y = x.toString();
  int left = 0;
  int right = y.length - 1;

  while (left < right) {
    if (y[left] != y[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}
