import 'package:employeestasks/models/language.dart';
import 'package:employeestasks/pages/about_employee.dart';
import 'package:employeestasks/pages/employee_info.dart';
import 'package:employeestasks/pages/home_screen.dart';
import 'package:employeestasks/pages/info.dart';
import 'package:employeestasks/pages/login.dart';
import 'package:employeestasks/pages/profile.dart';
import 'package:employeestasks/pages/select_langauge.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LangaugeProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SelectLanguages(),
        routes: {
          Login.routeName: (context) => const Login(),
          HomePage.routeName: (context) => const HomePage(),
          EmployeeInfo.routeName: (context) => const EmployeeInfo(),
          AboutEmployee.routeName: (context) => const AboutEmployee(),
          Profile.routeName: (context) => const Profile(),
          Info.routeName: (context) => const Info(),
        },
      ),
    );
  }
}
