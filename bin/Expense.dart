class Expense{
  final double amount;
  final String category;
  final String? note;
  final DateTime date;

  Expense(this.amount, this.category, this.note, this.date);

  @override
  String toString() {
    return ("\$ $amount, $category, $note, $date")
  }
}