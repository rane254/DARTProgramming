/// create a "Customer" class with a set of operations.
/// a getter and setter for customer's first name, last name and address.
/// function that displays customer's full name.
/// An empty function that returns the customer's ID.

class Customer {
  String _firstName;
  String _lastName;
  String _address;

  Customer(
    this._firstName,
    this._lastName,
    this._address,
  );

  String get firstName => _firstName;
  String get lastName => _lastName;
  String get address => _address;

  set setFirstName(String fName) => this._firstName = fName;
  set setLastName(String lName) => this._lastName = lName;
  set setAddress(String address) => this._address = address;

  void printDetails() {
    print('full name: $firstName $lastName\naddress: $_address');
  }
}

void main() {
  Customer customer = Customer("Brijesh", "Rane", "Panaji, Goa, India");
  customer.printDetails();
}