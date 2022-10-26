import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import '../utilis/color.dart';
import '../utilis/pathimage.dart';
import '../widgets/btn.dart';
import 'form_build.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final form = GlobalKey<FormState>();
  bool? isRememberMe = false;
  Widget buildRemberMe() {
    return SizedBox(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: white),
            child: Checkbox(
              value: isRememberMe,
              activeColor: grey,
              tristate: true,
              onChanged: (value) {
                setState(
                  () {
                    isRememberMe = value;
                  },
                );
              },
            ),
          ),
          Text(
            "Remember Me?",
            style: TextStyle(
                color: white, fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(background3), fit: BoxFit.cover),
              ),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(
                              logo,
                            ),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    buildEmail(),
                    const SizedBox(
                      height: 10,
                    ),
                    buildPassword(),
                    buildForgotPassword(),
                    const SizedBox(
                      height: 0,
                    ),
                    buildRemberMe(),
                    const SizedBox(
                      height: 10,
                    ),
                    Btn(
                      borderColor: primary,
                      title: 'LOGIN',
                      borderRadius: BorderRadius.circular(3),
                      margin: const EdgeInsets.all(5),
                      height: 50,
                      onPressed: () {},
                      textColor: offPrimary,
                      textSize: 15,
                      color: primary,
                      width: 300,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
// TextField(
//     // controller: _useController,//binding controller
//
//     autofocus: true,//Auto Focus
//     textAlign: TextAlign.left,//Align left to right
//     style: new TextStyle(color: Colors.black,fontSize: 15),//Enter content color and font size
//     cursorColor: MyColors.grey,//Cursor color
//     keyboardType: TextInputType.text,
//     decoration: InputDecoration(
//       //Add decorative effect
//       filled: true,//Is the background filled
//       fillColor: Colors.white,//Add a yellow fill color ( filled: true Must be set, otherwise setting the fill color separately will not take effect)
//
//       prefixIcon: Icon(Icons.person,color: MyColors.grey,),//Left Icon
//       //Right Text Tip
//       suffixStyle: new TextStyle(fontSize: 20),//Right Tip Text Font Size
//       hintText: 'Username',//hint Prompt copy
//       hintStyle: new TextStyle(color: Colors.black),//hint Tip Copy Font Color
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10.0),//Add rounded corners
//
//
//       ),
//     )
// ),
//
//
//
// Padding(
//   padding: const EdgeInsets.symmetric(vertical: 20),
//
//     child: TextFormField(
//
//       textInputAction: TextInputAction.done,
//       obscureText: true,
//       cursorColor: MyColors.grey,
//       decoration: InputDecoration(
//         hintText: "Your password",
//         prefixIcon: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Icon(Icons.lock),
//         ),
//       ),
//     ),
//   ),

// you can use form instead of textfields  

      // Form(
      //                   child: Column(
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.all(10.0),
      //                     child: TextFormField(
      //                       decoration: InputDecoration(
      //                         filled: true,
      //                         fillColor: Colors.white,
      //                         enabledBorder: OutlineInputBorder(
      //                           borderSide: const BorderSide(
      //                               width: 3,
      //                               color: Colors.greenAccent), //<-- SEE HERE
      //                           borderRadius: BorderRadius.circular(10.0),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(10.0),
      //                     child: TextFormField(
      //                       decoration: InputDecoration(
      //                         filled: true,
      //                         fillColor: Colors.white,
      //                         enabledBorder: OutlineInputBorder(
      //                           borderSide: const BorderSide(
      //                               width: 3,
      //                               color: Colors.greenAccent), //<-- SEE HERE
      //                           borderRadius: BorderRadius.circular(10.0),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               )),