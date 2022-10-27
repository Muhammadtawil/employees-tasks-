import 'package:employeestasks/utilis/pathimage.dart';
import 'package:flutter/material.dart';

import '../utilis/color.dart';
import 'header_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //  * Header Drawer
          // const HeaderDrawer(),
          // * setting Drawer
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: ListTile(
                leading: CircleAvatar(child: Image.asset(logo)),
                title: const Text('Full Name'),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_rounded)),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.language),
                color: offPrimary,
              ),
              TextButton(
                  child: Text(
                    "Language",
                    style: TextStyle(color: offPrimary),
                  ),
                  onPressed: () {}),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.health_and_safety_outlined),
                color: offPrimary,
              ),
              TextButton(
                  child: Text(
                    "Health Insurance",
                    style: TextStyle(color: offPrimary),
                  ),
                  onPressed: () {}),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.book_outlined),
                color: offPrimary,
              ),
              TextButton(
                  child: Text(
                    "CV",
                    style: TextStyle(color: offPrimary),
                  ),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
