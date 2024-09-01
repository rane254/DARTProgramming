import 'dart:io';

int main() {
  print('Enter the the rows: ');
  int? row = int.parse(stdin.readLineSync()!);

  // pattern1(row);
  pattern3(row);
  return 0;
}

void pattern1(int x) {
  // right angle triangle
  for (int i = 1; i <= x; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    print("");
  }
}

void pattern2(int x) {
  // pyramid
  for (int i = 1; i <= x; i++) {
    for (int j = 1; j <= x - i; j++) {
      stdout.write(" ");
    }

    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }

    print("");
  }
}

void pattern3(int x) {
  // right angle triangle reverse
  for (int i = 1; i <= x; i++) {
    for (int j = 1; j <= x - i; j++) {
      stdout.write(" ");
    }

    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }

    print("");
  }
}
