import 'myLib.dart' as emp;

void main() {
  double extraPayPerHr;
  var Ahmad = emp.Employee('Boss', 'Sarawak', 5000, 7);
  if (Ahmad.salary >= 4000) {
    extraPayPerHr = 10;
  } else {
    extraPayPerHr = 20;
  }
  double total = Ahmad.salary + (Ahmad.overtimeHr * extraPayPerHr);
  print('Total Salary = \RM$total USD');
}
