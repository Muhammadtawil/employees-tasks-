// _goToApp() async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   preferences.setInt("cityId", 1);
//   if (preferences.getString("lang") == "en") {
//     changeLanguage("en", context);
//   } else {
//     changeLanguage("ar", context);
//   }
//
//   VisitorProvider visitorProvider =
//   Provider.of<VisitorProvider>(context, listen: false);
//   if (preferences.getString("userId") != null) {
//     visitorProvider.visitor = false;
//     Navigator.of(context).pushAndRemoveUntil(
//         MaterialPageRoute(builder: (c) => Home()), (route) => false);
//   } else {
//     visitorProvider.visitor = true;
//     changeLanguage("ar", context);
//
//     Navigator.of(context).pushAndRemoveUntil(
//         MaterialPageRoute(builder: (c) => SelectLang()), (route) => false);
//   }
// }

import 'dart:async';

// import 'package:emdadat01/views/selectlanguage.dart';
import 'package:employeestasks/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../utilis/pathimage.dart';

// import 'BasicEmployeeInfo.dart';
// import 'Login.dart';
// import 'AboutEmployee.dart';
// import 'VisaEmployeeInfo.dart';
// import 'employeeInfo.dart';
// import 'healthInsurance.dart';
// import 'myRequest.dart';
// import 'Cv.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _splashTimer();
  }

  Future<Timer> _splashTimer() async {
    return Timer(const Duration(seconds: 2), _goToApp);
  }

  _goToApp() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (c) => const HomePage()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(PathImage.background1),
                    fit: BoxFit.cover)),
            child: AnimationConfiguration.staggeredList(
              position: 0,
              duration: const Duration(milliseconds: 500),
              child: Visibility(
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(PathImage.logo),
                              scale: 3)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
