import 'myLib.dart';

void main() {
  Employee employee = Employee(
    basicSalary: 5000,
    overtimeHours: 7,
  );

  print('Basic Salary: RM ${employee.basicSalary.toStringAsFixed(2)}');
  print('Overtime Hours: ${employee.overtimeHours}');
  print(
      'Overtime Payment: RM ${employee.calculateOvertime().toStringAsFixed(2)}');
  print(
      'Total Payment: RM ${employee.calculateTotalPayment().toStringAsFixed(2)}');
}
