import 'dart:collection';
import 'dart:io';

void main() {
  HashMap<int, dynamic> map = HashMap();
  print('Enter the size of the map: ');
  int input = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < input; i++) {
    print('Enter the value: ');
    dynamic x = stdin.readLineSync()!;
    map[i] = x;
  }

  map.forEach(
    (key, value) => print('Key: $key, Value: $value\n'),
  );
}
