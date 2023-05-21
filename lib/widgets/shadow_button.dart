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
              color: btnshadow,

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
              color: gradient1,
              fontSize: 16,
            ),
          ),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(width, height),
              backgroundColor: element,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
        ));
  }
}
