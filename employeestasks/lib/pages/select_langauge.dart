import 'package:employeestasks/models/language.dart';
import 'package:employeestasks/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utilis/pathimage.dart';

class SelectLanguages extends StatefulWidget {
  const SelectLanguages({super.key});

  @override
  State<SelectLanguages> createState() => _SelectLanguagesState();
}

class _SelectLanguagesState extends State<SelectLanguages> {
  bool expanded = false;
  bool ontap = false;
  var title = 'Select language';
  @override
  Widget build(BuildContext context) {
    final languages =
        Provider.of<LangaugeProvider>(context, listen: false).languagesItems;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(background2), fit: BoxFit.cover)),
        child: ListView(children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: ExactAssetImage(logo), scale: 5)),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.13,
                  right: MediaQuery.of(context).size.width * 0.13,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: ListTile(
                    title: Text(title),
                    trailing: IconButton(
                      icon: Icon(expanded == true
                          ? Icons.expand_less
                          : Icons.expand_more),
                      onPressed: () {
                        setState(() {
                          expanded = !expanded;
                          ontap = false;
                        });
                      },
                    ),
                  ),
                ),
              ),
              if (expanded == true)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    // color: Colors.white,
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.13,
                      right: MediaQuery.of(context).size.width * 0.13,
                    ),
                    height: 150,
                    width: 290,
                    child: ListView(
                      children: languages
                          .map((language) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ontap = !ontap;
                                    title = language.title;
                                  });
                                },
                                child: DropdownMenuItem<String>(
                                  value: language.id,
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset(
                                        language.imageUrl,
                                        width: 25,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                            margin:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(language.title)),
                                      ),
                                      if (ontap) const Icon(Icons.done)
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ),
              if (expanded == false)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 290,
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      // color: Colors.white,
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.13,
                        right: MediaQuery.of(context).size.width * 0.13,
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(Login.routeName);
                          },
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
            ],
          )
        ]),
      ),
    );
  }
}
