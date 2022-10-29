import 'package:flutter/material.dart';

class Employee {
  final String name;
  final String residence;
  final String phone;
  final String country;
  final String dateOfBirth;
  final String dateOfJoin;

  Employee(this.name, this.residence, this.phone, this.country,
      this.dateOfBirth, this.dateOfJoin);
}

class EmployeeProvider with ChangeNotifier {}
