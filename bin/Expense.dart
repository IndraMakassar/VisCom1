import 'dart:io';

class Expense {
  late double amount;
  late String category;
  String? note;
  late DateTime date;

  Expense(this.amount, this.category, this.note, this.date);

  @override
  String toString() {
    String date = '${this.date.year}-${this.date.month}-${this.date.day}';
    return ("$date, \$$amount, $category, $note");
  }

  Expense.add() {
    print("Please enter the date: (YYYY-MM-DD)");
    inputDate();
    print('Please enter the amount:');
    inputAmount();
    print("Please enter the category:");
    inputCategory();
    print("Please enter a note (optional):");
    inputNote();
  }

  inputDate() {
    String dateString = '${stdin.readLineSync()!}-01';
    List<String> dateSplit = dateString.split('-');
    try {
      date = DateTime(int.parse(dateSplit.elementAt(0)),
          int.parse(dateSplit.elementAt(1)), int.parse(dateSplit.elementAt(2)));
    } catch(e) {
      print("Please enter a valid date");
      inputDate();
    }
    return date;
  }

  inputAmount() {
    try {
      amount = double.parse(stdin.readLineSync()!);
    } catch (e) {
      print('the amount is not valid');
      inputAmount();
    }
    return amount;
  }

  inputCategory() {
    category = stdin.readLineSync()!;
    if (category.isEmpty) {
      inputCategory();
    }
    return category;
  }

  inputNote() {
    note = stdin.readLineSync();
    return note;
  }
}
