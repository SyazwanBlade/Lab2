class Employee {
  double basicSalary;
  int overtimeHours;

  Employee({
    required this.basicSalary,
    required this.overtimeHours,
  });

  double calculateOvertime() {
    if (basicSalary >= 4000) {
      return overtimeHours * 10.0;
    }
    return 0.0;
  }

  double calculateTotalPayment() {
    return basicSalary + calculateOvertime();
  }
}
