// Simple Expense Tracker in Dart:

class Expense {
  String title;
  double amount;

  Expense(this.title, this.amount);
}

List<Expense> expenses = [];

void addExpense(String title, double amount) {
  expenses.add(Expense(title, amount));
}

void showExpenses() {
  for (var expense in expenses) {
    print("${expense.title} : ₹${expense.amount}");
  }
}

void main() {
  addExpense("Pizza", 300);
  addExpense("Gym", 1500);

  showExpenses();
}