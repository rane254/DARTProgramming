import 'Bank/bank_account.dart';

void main() {
  var myAccount1 = BankAccount(1000, 'Brijesh');
  myAccount1.showBal();

  myAccount1.withdrawBal(500);
  myAccount1.withdrawBal(500);
}
