// main.dart - the program that runs

import 'dart:io'; // lets us read keyboard input
import 'myLib.dart' as emp; // bring in the Employee class

void main() {
  double extraPayPerHr;

  // ask the user to type the values
  print('Please enter basic salary: ');
  double salary = double.parse(stdin.readLineSync()!);

  print('Please enter overtime hours: ');
  int hours = int.parse(stdin.readLineSync()!);

  // create the Employee object with the typed values
  var employee = emp.Employee(salary, hours);

  // decide the overtime rate based on the salary
  if (employee.basicSalary >= 4000) {
    extraPayPerHr = 10;
  } else {
    extraPayPerHr = 20;
  }

  // overtime payment = hours x rate
  double overtimePayment = employee.overtimeHours * extraPayPerHr;

  // total = basic salary + overtime payment
  double total = employee.basicSalary + overtimePayment;

  print('Basic Salary: RM ${employee.basicSalary}');
  print('Overtime Hours: ${employee.overtimeHours}');
  print('Overtime Payment: RM $overtimePayment');
  print('Total Payment: RM $total');
}
