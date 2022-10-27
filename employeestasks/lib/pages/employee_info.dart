import 'package:employeestasks/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import '../utilis/color.dart';
import '../utilis/pathimage.dart';
import '../widgets/btn.dart';

class EmployeeInfo extends StatefulWidget {
  static const routeName = '/employee-info';
  const EmployeeInfo({Key? key}) : super(key: key);

  @override
  State<EmployeeInfo> createState() => _EmployeeInfoState();
}

class _EmployeeInfoState extends State<EmployeeInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(bGEmdadat), fit: BoxFit.cover),
              ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Btn(
                          borderColor: offPrimary,
                          title: 'Basic Employee Info',
                          borderRadius: BorderRadius.circular(3),
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => const BasicEmployeeInfo()));
                          },
                          textColor: white,
                          textSize: 15,
                          color: offPrimary,
                          width: 350,
                          icon: Icons.arrow_drop_down_sharp,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Btn(
                          borderColor: offPrimary,
                          title: 'Visa Employee Info  ',
                          borderRadius: BorderRadius.circular(3),
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => const VisaEmployeeInfo()));
                          },
                          textColor: white,
                          textSize: 15,
                          color: offPrimary,
                          width: 350,
                          icon: Icons.arrow_drop_down_sharp,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Btn(
                          borderColor: offPrimary,
                          title: 'Employee Info        ',
                          borderRadius: BorderRadius.circular(3),
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const EmpInfo()));
                            // print("Done");
                          },
                          textColor: white,
                          textSize: 15,
                          color: offPrimary,
                          width: 350,
                          icon: Icons.arrow_drop_down_sharp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // drawer: const CustomDrawer(),
    );
  }
}
