class Expense {
  final String id;
  final String userId;
  final String amount;
  final bool isExpense; // expense or income
  final String date;
  final String month;
  final String year;
  final String filterId;

  Expense({
    required this.id,
    required this.userId,
    required this.amount,
    required this.isExpense,
    required this.date,
    required this.month,
    required this.year,
    required this.filterId,
  });
}
