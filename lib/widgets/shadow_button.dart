import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';

class ShadowButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;

  const ShadowButton(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 199, 46, 224),
              //color: Color.fromARGB(80, 199, 46, 224),
              blurRadius: 2.0,
              spreadRadius: -1.0,
              offset: Offset(4, 3.5), // shadow direction: bottom right
            )
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: secondary,
              color: textcolor,
              fontSize: 14,
            ),
          ),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(width, height),
              backgroundColor: button,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
        ));
  }
}
