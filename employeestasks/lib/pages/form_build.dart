import 'package:flutter/material.dart';

import '../utilis/color.dart';

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Icon(Icons.person),

      const SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: black, blurRadius: 6, offset: const Offset(0, 2)),
          ],
        ),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(color: black),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: grey,
              ),
              hintText: "Username",
              hintStyle: TextStyle(color: black)),
        ),
      ),
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Icon(Icons.person),

      const SizedBox(height: 5),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: black, blurRadius: 6, offset: const Offset(0, 2)),
          ],
        ),
        height: 50,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: black),
          minLines: 1,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: grey,
              ),
              hintText: "password",
              hintStyle: TextStyle(color: black)),
        ),
      ),
    ],
  );
}

Widget buildForgotPassword() {
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () {},
      // padding: const EdgeInsets.only(right: 0),
      child: Text(
        "Forgot Password?",
        style:
            TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    ),
  );
}
