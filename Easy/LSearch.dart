import 'dart:io';

void main() {
  List<int> arr = [];
  stdout.write("Enter the size of the array: ");
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++) {
    stdout.write("Enter element ${i + 1}: ");
    int ele = int.parse(stdin.readLineSync()!);
    arr.add(ele);
  }
  print("\nThe entered array is :");
  arr.forEach((element) => stdout.write("$element "));
  print("");
  stdout.write("Enter the element to search: ");
  int key = int.parse(stdin.readLineSync()!);

  int result = LSearch(arr, key, size);

  if (result == -1) {
    print("Element $key not found!");
  } else {
    print("The element $key is at index $result");
  }
}

int LSearch(List<int> arr, int key, int size) {
  for (int i = 0; i < size; i++) {
    if (arr[i] == key) {
      return i;
    }
  }
  return -1;
}
