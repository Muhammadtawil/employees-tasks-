import 'package:employeestasks/models/employee.dart';
import 'package:employeestasks/utilis/pathimage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utilis/color.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/head.dart';

class EmployeesInfo extends StatelessWidget {
  static const routeName = '/employees-info';
  const EmployeesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Basic Employee Information',
      'Visa Employee Information',
      ' Employee Information',
    ];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const AppHead(),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(bGEmdadat), fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 150,
                    margin:
                        const EdgeInsets.only(top: 100, bottom: 15, left: 6),
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage(logo),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 50),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 10,
                            ),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return ExpandableListView(
                                title: titles[index],
                              );
                            },
                            itemCount: titles.length,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}

class ExpandableListView extends StatefulWidget {
  final String title;

  const ExpandableListView({Key? key, required this.title}) : super(key: key);

  @override
  State<ExpandableListView> createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {
  bool expandFlag = false;

  @override
  Widget build(BuildContext context) {
    // final employeeProvider =
    //     Provider.of<EmployeeProvider>(context, listen: false);
    final List<String> employeesInfo = [
      'name',
      'residence',
      'phone',
      'country',
      'date Of Birth',
      'date Of Join'
    ];

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            color: offPrimary,
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                IconButton(
                    icon: Icon(
                      expandFlag
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () {
                      setState(() {
                        expandFlag = !expandFlag;
                      });
                    }),
              ],
            ),
          ),
          ExpandableContainer(
              expanded: expandFlag,
              child: ListView.builder(
                // shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        color: Colors.white),
                    child: ListTile(
                      title: Text(
                        employeesInfo[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ),
                  );
                },
                itemCount: employeesInfo.length,
              ))
        ],
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
