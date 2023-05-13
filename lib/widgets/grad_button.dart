import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lunksta/constants.dart';

class GradButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const GradButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(colors: [gradient1, gradient2])),
        child: Center(
          child: Text(
            text,
            style: buttonstyle,
          ),
        ),
      ),
    );
  }
}
