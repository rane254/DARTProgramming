class BankAccount {
  num? _currentBalance = 0; // property 1
  String? accountHolder; // property 2

  // constructor which is called when object is instantiated for the first time
  // while creating the object, one must pass the the necessary properties of the class
  BankAccount(
    this._currentBalance,
    this.accountHolder,
  );

  // getter method
  get getBalance => this._currentBalance;

  // setter method
  void set depositBal(num amount) {
    if (amount >= 500) {
      this._currentBalance = this._currentBalance! + amount;
      showBal();
    } else {
      throw Exception('Entered amount cannot less than 500');
    }
    ;
  }

  void withdrawBal(num amount) {
    if (amount >= 500 && amount <= this._currentBalance!) {
      this._currentBalance = _currentBalance! - amount;
      showBal();
    } else {
      throw Exception(
          'Entered amount should be greater than 499 \nand less than the current balance');
    }
  }

  void showBal() {
    print('Balance: ${this._currentBalance}');
  }
}
