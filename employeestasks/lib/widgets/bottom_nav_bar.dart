import 'package:employeestasks/pages/about_employee.dart';
import 'package:employeestasks/pages/info.dart';
import 'package:employeestasks/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      //bottom navigation bar on scaffold
      color: const Color(0xff696b9e),
      shape: const CircularNotchedRectangle(), //shape of notch
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Row(
        //children inside bottom appbar
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.collections_bookmark_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.house_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(AboutEmployee.routeName);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {
              // Provider.of<Auth>(context, listen: false).logout();
              Navigator.of(context).pushNamed(Info.routeName);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(Profile.routeName);
            },
          ),
        ],
      ),
    );
  }
}
