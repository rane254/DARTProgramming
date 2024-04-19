import 'dart:io';

void main() {
  // lstDataStructure();
  // mapDataStructure();

  // dynamic variable = 25;
  // print(variable.runtimeType); // Output: int

  // constFinalKeywords();
  // conditionalStatements();
  // ternaryOperators();

  // stdout.write("Enter the number 1: ");
  // int x = int.parse(stdin.readLineSync()!);
  // stdout.write("Enter the number 2: ");
  // int y = int.parse(stdin.readLineSync()!);

  // MathUtils mu = new MathUtils(x, y);
  // int choice;
  // do {
  //   print(
  //       "Enter the choice\n0 - Exit\n1 - Addition\n2 - Subtraction\n3 - Multiplication\n4 - Division");
  //   choice = int.parse(stdin.readLineSync()!);

  //   switch (choice) {
  //     case (0):
  //       print("Exiting...\n");
  //       break;

  //     case (1):
  //       dynamic result = mu.addition();
  //       print("Addition is $result\n");
  //       break;

  //     case (2):
  //       dynamic result = mu.subtraction();
  //       print("Difference is $result\n");
  //       break;

  //     case (3):
  //       dynamic result = mu.multiplication();
  //       print("Product is $result\n");
  //       break;

  //     case (4):
  //       dynamic result = mu.division();
  //       print("Remainder is $result\n");
  //       break;

  //     default:
  //       print("Invalid Choice!\n");
  //       break;
  //   }
  // } while (choice != 0);

  // print(mu.getArea(3.14, 5.0));

  // Person2 p2 = new Person2();
  // p2.setName = "Brijesh"; // setter functions
  // p2.setL_name = "Rane"; // setter functions
  // p2.getName; // getter functions
  // p2.getL_name; // getter functions
  // p2.printName();

  // double length = 2.0;
  // double breadth = 7.0;
  // String ar = ShortHandSyntax.areaRectangle(length, breadth);
  // print("The area of rectangle is $result");
  // print(ar);

  // MobilePhone mp = new MobilePhone("Smartphone", "Samsung");
  // mp.height = 24.0;
  // mp.width = 10.0;
  // mp.thickness = 5.0;
  // mp.printDetails();
  // mp.portability();
  // mp.call();
  // mp.playGames();

  Laptop lappy = Laptop("Victus");
  lappy.height = 16.0;
  lappy.width = 24.0;
  lappy.thickness = 10.0;
  lappy.portability();
  lappy.printDetails();
}

/*-------------------------------------------------------------------------------------*/
// Inheritance
class Electronics {
  double width = 50;
  double height = 100;
  double thickness = 0;
  String brand = "";
  Electronics(String brand) {
    print("Using the $brand ..."); // parent constructor
    this.brand = brand;
  }

  void portability() {
    print("Portability - don't know");
  }

  void printDetails() {
    print(
        "The height and width of my $brand is\nheight: $height width: $width");
  }
}

class MobilePhone extends Electronics {
  MobilePhone(String model, brand) : super(brand) /*Electronic class*/ {
    print("Using the $model $brand ..."); // child constructor
  }

  // overriding
  void portability() {
    print("Portability - Highly portable");
    // super.portability(); /*Calling the parent class method*/
  }

  void call() {
    print("Calling...");
  }

  void playGames() {
    print("Playing Games...");
  }
}

abstract class Computer extends Electronics {
  Computer(super.brand) {
    print("Using the $brand ...");
  }

  void printDetails(); // abstract method
}

class Laptop extends Computer {
  Laptop(super.brand) {
    print("Using the $brand ...");
  }

  void portability() {
    print("Portability - portable");
  }

  void printDetails() {
    // body/implementation must be defined for abstract method
    print(
        "Brand: $brand\nWidth: $width\nHeight: $height\nThickness: $thickness");
  }
}

/*-------------------------------------------------------------------------------------*/
class ShortHandSyntax {
// double areaRectangle(double length, double breadth) => length * breadth;
  static areaRectangle(double length, double breadth) =>
      "The area of rectangle is ${length * breadth}";
}

/*-------------------------------------------------------------------------------------*/

class Person2 {
  String _name = "";
  String _l_name = "";

  void printName() {
    print("$getName $getL_name");
  }

  // setter functions
  void set setName(String x) => this._name = x;
  void set setL_name(String y) {
    this._l_name = y;
  }

  // getter functions
  String get getName => _name;
  String get getL_name {
    return _l_name;
  }
}

/*-------------------------------------------------------------------------------------*/

class MathUtils {
  // global variables
  int x = 0;
  int y = 0;
  static const pi = 3.14;

  // default constructor
  // MathUtils() {
  //   print('Default Constructor Called');
  // }

  MathUtils(int x, int y) {
    print('Parameterized Constructor Called');
    this.x = x;
    this.y = y;
  }

  int addition() {
    return x + y;
  }

  int subtraction() {
    return x - y;
  }

  int multiplication() {
    return x * y;
  }

  double division() {
    return x / y;
  }

  double getArea(pi, double radius) {
    return pi * radius * radius;
  }
}

/*-------------------------------------------------------------------------------------*/

void ternaryOperators() {
  stdout.write("Enter your age? ");
  var age = int.parse(stdin.readLineSync()!);

  // expression/condition ? if true(run this) : if false(run this)
  print(age > 100 || age < 1
      ? "Are you alive?"
      : age >= 18 && age <= 100
          ? "You are eligible to vote."
          : "You are not eligible to vote!");
}

/*-------------------------------------------------------------------------------------*/

void conditionalStatements() {
  stdout.write("Enter your age? ");
  var age = int.parse(stdin.readLineSync()!);

  if (age < 10) {
    print('You are a kid');
  } else if (age >= 10 && age < 18) {
    print('You are a teenager');
  } else {
    print('You are an adult');
  }
}

/*-------------------------------------------------------------------------------------*/

void constFinalKeywords() {
  // final - at runtime, can reside inside the class
  final String name = "Brijesh";
  // name = "Rane"; // Error: The final variable 'name' cannot be assigned
  // a value because it is already initialized.
  print("Name : $name");

  // const - at compile time, can't reside inside the class
  const double pi = 3.14;
  // pi = 3.41; // Error: A constant can't be assigned
  print("PI : $pi");
}

/*-------------------------------------------------------------------------------------*/

class Person1 {
  final String name = "Brijesh";
  // const String color = "Red"; // Only static fields can be declared as const or try adding final keyword to make it const
  static const color = "Red";
}

/*-------------------------------------------------------------------------------------*/

void mapDataStructure() {
  List<dynamic> mixList = ["flutter", "c++", "kotlin"];
  Map<String, dynamic> map = {"name": "Brijesh", "age": 22, "likes": mixList};

  print(map); // Output: {name: Brijesh, age: 22, likes: [flutter, c++, kotlin]}
  print(map.keys); // Output: [name, age, likes]
  print(map.values); // Output: [Brijesh, 22, [flutter, c++, kotlin]]

  print(map["likes"]);
}

/*-------------------------------------------------------------------------------------*/

void lstDataStructure() {
  List<int> num_lst = [1, 3, 5, 2, 4];
  print(num_lst); // Output: [1, 3,  5, 2, 4]
  num_lst.sort();
  print(num_lst); // Output: [1, 2,  3, 4, 5]
  num_lst.addAll([6, 7]);
  print(num_lst); // Output: [1, 2,  3,  4, 5, 6,  7]
  int index = num_lst.indexOf(4);
  print("The number 4 is at position $index");
}

/*-------------------------------------------------------------------------------------*/

