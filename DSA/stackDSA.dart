import 'dart:io';

void main() {
  final stack = Stack<int>();
  while (true) {
    print("1. Push\n2. Pop\n3. Peek\n4. Display\n5. Is Empty?\n6. Exit");
    print("Enter the choice: ");
    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? '');
    if (choice == null || choice < 1 || choice > 6) {
      print("Invalid choice. Please try again.");
      continue;
    }
    if (choice == 6) {
      print("Exiting..........");
      break;
    }

    switch (choice) {
      case 1:
        {
          print("Enter the element to push: ");
          String? elementInput = stdin.readLineSync();
          int? element = int.tryParse(elementInput ?? '');
          if (element != null) {
            stack.push(element);
            print("Pushed $element into stack.");
          } else {
            print("Invalid input. Please enter a number.");
          }
          break;
        }
      case 2:
        {
          try {
            int popped = stack.pop();
            print("Popped $popped from stack.");
          } catch (e) {
            print("Error: $e");
          }
          break;
        }
      case 3:
        {
          try {
            int front = stack.peek;
            print('The top element is $front');
          } catch (e) {
            print("Error: $e");
          }
          break;
        }
      case 4:
        {
          print(stack);
          break;
        }
      case 5:
        {
          if (stack.isEmpty) {
            print('Stack is empty');
          } else {
            print('Stack is not empty');
          }
        }
    }
  }
}

class Stack<T> {
  Stack() : _storage = <T>[];
  final List<T> _storage;

  void push(T element) => _storage.add(element);

  T pop() {
    if (isEmpty) throw StateError('Cannot pop from an empty stack');
    return _storage.removeLast();
  }

  T get peek {
    if (isEmpty) throw StateError('Cannot peek an empty stack');
    return _storage.last;
  }

  bool get isEmpty => _storage.isEmpty;

  @override
  String toString() {
    return '-----Top-----\n${_storage.reversed.join('\n')}\n-------------';
  }
}
