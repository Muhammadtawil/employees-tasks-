import 'package:employeestasks/pages/home_screen.dart';
import 'package:flutter/material.dart';

import '../utilis/color.dart';
import '../utilis/pathimage.dart';
import '../widgets/btn.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLangState();
}

List<Map<String, dynamic>> language = [
  {
    "id": '1',
    "image": "assets/images/English.png",
    "name": "English",
    "languageCode": "en"
  },
  {
    "id": '2',
    "image": "assets/images/Arbic.png",
    "name": "Arabic",
    "languageCode": "ar"
  },
  {
    "id": '3',
    "image": "assets/images/Urdu.png",
    "name": "िन्दी",
    "languageCode": "ur"
  },
];

String? selectedValue = "1";

class _SelectLangState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(background2), fit: BoxFit.cover)),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 30),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: ExactAssetImage(logo), scale: 5)),
            ),

            DropdownButton(
              isExpanded: true,
              isDense: true,
              hint: const Text("Select Language"),
              value: selectedValue,
              icon: const Icon(Icons.arrow_drop_down_sharp),
              elevation: 16,
              style: TextStyle(color: MyColors.black),
              underline: Container(
                height: 3,
                color: MyColors.primary.withOpacity(.5),
              ),
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
              items: language.map((Map map) {
                return DropdownMenuItem<String>(
                  value: map["id"],
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        map["image"],
                        width: 25,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(map["name"])),
                    ],
                  ),
                );
              }).toList(),
            ),

            // TextButton(title: ("Continue"), onTap: (){}, color:MyColors.primary , textColor: MyColors.offPrimary, borderRadius: EdgeInsets.all(0), margin: EdgeInsets.symmetric(), borderColor: MyColors.primary, height: 30, width: 30, textSize: 40, onPressed: () {  },)

            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  // * line one

                  Btn(
                    borderColor: MyColors.primary,
                    title: 'Coutinue',
                    borderRadius: BorderRadius.circular(3),
                    margin: const EdgeInsets.all(5),
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    textColor: MyColors.offPrimary,
                    textSize: 15,
                    color: MyColors.primary,
                    width: 300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
