import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utilis/color.dart';
import '../utilis/pathimage.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/label_text_field.dart';
import '../widgets/my_drawer.dart';

class AboutEmployee extends StatelessWidget {
  static const routeName = '/about/employee';
  const AboutEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.list,
            size: 35,
            color: Colors.deepPurple,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.deepPurple,
              ))
        ],
      ),
      drawer: const CustomDrawer(),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
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
                  SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 50),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        Informations(
                          title: 'USER',
                          textSize: 15,
                          textColor: white,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Informations(
                          title: '123445678',
                          textSize: 15,
                          textColor: white,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Informations(
                          title: 'Project',
                          textSize: 15,
                          textColor: white,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Informations(
                          title: 'Key Account',
                          textSize: 15,
                          textColor: white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
