import 'myLib.dart';

void main() {
  Employee emp = Employee(
    EmpName: 'Samson',
    EmpID: 106222,
    EmpSalary: 5250.0,
    EmpOT: 5.0,
  );

  emp.displayEmployeePaySlip();
}
