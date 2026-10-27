class Employee {
  late String EmpName;
  late int EmpID;
  late double EmpSalary;
  late double EmpOT;

  Employee({
    required this.EmpName,
    required this.EmpID,
    required this.EmpSalary,
    required this.EmpOT,
  });

  double get OTPay {
    if (EmpSalary >= 4000) {
      return EmpOT * 10.0;
    } else {
      return EmpOT * 8.0;
    }
  }

  double calculateOTPay() {
    return EmpOT * OTPay;
  }

  double calculateTotalSalary() {
    return EmpSalary + calculateOTPay();
  }

  void displayEmployeePaySlip() {
    print('=========================================');
    print('Employee Name: $EmpName');
    print('Employee ID: $EmpID');
    print('Employee Salary: \$${EmpSalary.toStringAsFixed(2)}');
    print('Employee OT Hours: $EmpOT');
    print('=========================================');
    print('');
    print('=========================================');
    print('Employee OT Pay: \$${calculateOTPay().toStringAsFixed(2)}');
    print('Total Salary: \$${calculateTotalSalary().toStringAsFixed(2)}');
    print('=========================================');
  }
}
