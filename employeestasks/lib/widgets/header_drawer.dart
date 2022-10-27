import 'package:flutter/material.dart';

import '../utilis/color.dart';
import '../utilis/pathimage.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // * image
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.only(top: 50, bottom: 15, left: 6),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(logo),
              fit: BoxFit.contain,
            ),
          ),
        ),
        // * user Name

        Padding(
          padding: const EdgeInsets.only(left: 5, right: 10, top: 38),
          child: Text(
            'User',
            style: TextStyle(
                color: offPrimary, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        // * line
        Divider(
          color: Colors.black.withOpacity(0.5),
          thickness: 0.5,
        )
      ],
    );
  }
}
