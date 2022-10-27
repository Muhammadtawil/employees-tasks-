import 'package:flutter/material.dart';

import '../utilis/pathimage.dart';

class Informations extends StatelessWidget {
  final String title;
  final Color textColor;
  final double textSize;

  const Informations(
      {super.key,
      required this.title,
      required this.textSize,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          image: const DecorationImage(
            image: ExactAssetImage(background3),
            scale: 3,
            fit: BoxFit.fitWidth,
          )),
      height: 50,
      child: Center(
        child: Text(title,
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
              fontWeight: FontWeight.normal,
            )),
      ),
    );
  }
}
