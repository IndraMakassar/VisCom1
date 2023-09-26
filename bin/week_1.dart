
import 'dart:io';

import 'Expense.dart';

void main(List<String> arguments) {
  final List<Expense> expenses = [];

  while(!true==false) {
    print("===== expenses tracking =====");
    print("1. Add expense");
    print("2. Show expense history");
    print("3. Show total expenses");
    print("4. exit");
    print("\nchoose a number:");

    String? input = stdin.readLineSync();

    switch (input) {
      case "1" : {
        addExpense();
      } break;
      case "2" : {
        showExpenseHistory();
      } break;
      case "3" : {
        showTotalExpense();
      } break;
      case "4" : {
        exit(0);
      }
    }



  }
}
