import 'dart:io';

class Expense {
  late double amount;
  late String category;
  String? note;
  late DateTime date;

  Expense(this.amount, this.category, this.note, this.date);

  @override
  String toString() {
    return ("\$$amount, $category, $note, $date");
  }

  Expense.add() {
    inputDate();
    inputAmount();
    inputCategory();
    inputNote();
  }

  inputDate() {
    print("Please enter the date: (YYYY-MM-DD)");
    try {
      date = DateTime.parse(stdin.readLineSync()!);
    } on FormatException {
      print("Please enter a valid date");
      inputDate();
    }
  }

  inputAmount() {
    print('Please enter the amount:');
    try {
      amount = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('the amount is not valid');
      inputAmount();
    }
  }

  inputCategory() {
    print("Please enter the category:");
    category = stdin.readLineSync()!;
    if (category.isEmpty) {
      inputCategory();
    }
  }

  inputNote() {
    print("Please enter a note (optional):");
    note = stdin.readLineSync();
  }
}
