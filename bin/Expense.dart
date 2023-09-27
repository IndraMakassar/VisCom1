import 'dart:io';

class Expense{
  late double amount;
  late String category;
  String? note;
  late DateTime date;

  Expense(this.amount, this.category, this.note, this.date);

  @override
  String toString() {
    return ("\$ $amount, $category, $note, $date");
  }

  Expense.add(){
    print("Please enter the date: (YYYY-MM-DD)");
    date = DateTime.parse(stdin.readLineSync()!);
    print('Please enter the amount:');
    amount = double.parse(stdin.readLineSync()!);
    print("Please enter the category:");
    category = stdin.readLineSync()!;
    print("Please enter a note (opsional):");
    note = stdin.readLineSync();
  }
}