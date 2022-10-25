import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color textColor;
  final Color color;
  final Color borderColor;
  final BorderRadius borderRadius;
  final EdgeInsets margin;
  final double width;
  final double height;
  final double textSize;
  final IconData? icon;
  final Alignment? alignment;

  const Btn(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.color,
      required this.textColor,
      required this.borderRadius,
      required this.margin,
      required this.borderColor,
      required this.height,
      required this.width,
      this.icon,
      required this.textSize,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    // Color border = color;
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
            border: Border.all(color: borderColor, width: 2)),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(title,
                  style: TextStyle(
                    fontSize: textSize,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            icon != null
                ? Icon(
                    icon,
                    color: textColor,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
