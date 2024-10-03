// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:core';

void main() {
  // printName(["Brijesh", "Rane", "Brijesh", "Akshata", "Briju", "Rane"]);
  // final start = DateTime.now();
  // final sum = sumFromOneTo(12345);
  // final end = DateTime.now();
  // final time = end.difference(start);
  // print(sum);
  // print(time);
  // print(filledList(5));

  final person = {
    'brijesh': 7.5,
    'jeevan': 8.4,
    'omprakash': 8.5,
  };

  print(person);
  person['manoj'] = 7.8;
  print(person);
  print(person.keys);
  // final result = person.keys.where((key) => person[key]! > 8.0).toList();
  final result = person.entries
      .where((entry) => entry.value > 8.0)
      .map((ele) => ele.key)
      .toList();
  print(result);
}

// void printName(List<String> names) {
//   final uniqueNames = Set.from(names);
//   print(uniqueNames);
// }

// int sumFromOneTo(int n) {
//   var sum = 0;
//   for (var i = 1; i <= n; i++) {
//     sum += i;
//   }
//   return sum;
// }

// List<String> filledList(int length) { // Space Complexity -> O(N)
//   return List.filled(length, 'a');
// }

List<String> filledList(int length) {
  // Space Complexity -> O(N square)
  return List.filled(length, 'a' * 5);
}
