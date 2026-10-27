// myLib.dart - the library file that holds our Employee class

class Employee {
  // properties (information every employee has)
  late double basicSalary;
  late int overtimeHours;

  // constructor: runs when we create an Employee, and fills in the properties
  Employee(this.basicSalary, this.overtimeHours);
}
