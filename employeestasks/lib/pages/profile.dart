import 'package:flutter/material.dart';

import '../utilis/color.dart';
import '../utilis/pathimage.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/head.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isExpanded = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;

  final List<String> employee = [
    'name',
    'residence',
    'phone',
    'country',
    'date Of Birth',
    'date Of Join'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage(bGEmdadat), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const AppHead(),
              const BuildLogoItem(),
              buildProfileItem('Basic Employee Information'),
              buildProfileItem('Basic Employee Information'),
              buildProfileItem('Basic Employee Information'),
              if (isExpanded) buildItemsContainer(),
              // ExpandableContainer(
              //     expanded: isExpanded,
              //     child: ListView.builder(
              //       itemBuilder: (BuildContext context, int index) {
              //         return Container(
              //           decoration: BoxDecoration(
              //               border: Border.all(width: 1.0, color: Colors.grey),
              //               color: Colors.black),
              //           child: ListTile(
              //             title: Text(
              //               "Cool $index",
              //               style: const TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white),
              //             ),
              //             leading: const Icon(
              //               Icons.local_pizza,
              //               color: Colors.white,
              //             ),
              //           ),
              //         );
              //       },
              //       itemCount: 15,
              //     ))
            ],
          ),
        ),
      ),
    );
  }

  Padding buildProfileItem(String title) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                image: const DecorationImage(
                  image: ExactAssetImage(background3),
                  scale: 3,
                  fit: BoxFit.fitWidth,
                )),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  icon: Icon(isExpanded == true
                      ? Icons.expand_less
                      : Icons.expand_more),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildItemsContainer() {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      // color: Colors.white,
      padding: const EdgeInsets.all(8),

      child: ListView(
        children: employee
            .map((employees) => ListTile(
                  leading: Text(employees),
                ))
            .toList(),
      ),
    );
  }
}

class BuildLogoItem extends StatelessWidget {
  const BuildLogoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.only(top: 100, bottom: 15, left: 6),
      decoration: BoxDecoration(
        color: white,
        shape: BoxShape.circle,
        image: const DecorationImage(
          image: AssetImage(logo),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class ExpandableContainer extends StatelessWidget {
  final bool expanded;
  final double collapsedHeight;
  final double expandedHeight;
  final Widget child;

  const ExpandableContainer({
    super.key,
    required this.child,
    this.collapsedHeight = 0.0,
    this.expandedHeight = 300.0,
    this.expanded = true,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: screenWidth,
      height: expanded ? expandedHeight : collapsedHeight,
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 1.0, color: Colors.blue)),
        child: child,
      ),
    );
  }
}
