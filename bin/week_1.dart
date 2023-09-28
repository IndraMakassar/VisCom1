import 'dart:io';

import 'Expense.dart';

void main(List<String> arguments) {
  final List<Expense> expenses = [];

  while (!true == false) {
    print("===== expenses tracking =====");
    print("1. Add expense");
    print("2. Show expense history");
    print("3. Show total expenses");
    print("4. exit");
    print("\nchoose a number:");

    String? input = stdin.readLineSync();

    switch (input) {
      case "1":
        addExpense(expenses, Expense.add());
        break;
      case "2":
        showExpenseHistory(expenses);
        break;
      case "3":
        print("input the month: (YYYY-MM)");
        DateTime date = DateTime.parse(stdin.readLineSync()!);
        showTotalExpenseInMonth(expenses, date);
        break;
      case "4":
        exit(0);
    }
  }
}

List<Expense> addExpense(List<Expense> expenses, Expense expense) {
  expenses.add(expense);
  return expenses;
}

void showExpenseHistory(List<Expense> expenses) {
  expenses.forEach((element) {
    print(element.toString());
  });
}

void showTotalExpenseInMonth(List<Expense> expenses, DateTime yearMonth) {
  double total = 0;
  expenses
      .where((element) =>
          element.date.year + element.date.month ==
          yearMonth.year + yearMonth.month)
      .forEach((element) {
    total += element.amount;
  });
  print('total amount = \$$total');
}
