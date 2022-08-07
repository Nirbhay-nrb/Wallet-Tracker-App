import '../providers/expense.dart';

class Expenses {
  final String userId;
  final List<Expense> _expenses;
  Expenses(
    this.userId,
    this._expenses,
  );

  List<Expense> get expenses {
    return [..._expenses];
  }
}
