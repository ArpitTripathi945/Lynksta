import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors

dynamic bgcolor = Color.fromARGB(255, 29, 29, 29);
dynamic element = Color.fromARGB(255, 42, 42, 42);
dynamic textcolor = Color.fromARGB(255, 49, 243, 162);
dynamic gradient1 = const Color.fromARGB(255, 49, 243, 62);
dynamic gradient2 = const Color.fromARGB(255, 199, 46, 224);

//Fonts

dynamic secondary = GoogleFonts.sen().fontFamily;
dynamic primary = GoogleFonts.audiowide().fontFamily;
dynamic tertiary = GoogleFonts.roboto().fontFamily;

// Text styles

dynamic textstyle = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily,
    fontSize: 12,
    color: Colors.white);

dynamic loginstyle =
    TextStyle(fontFamily: primary, fontSize: 36, color: gradient1);

dynamic copyright =
    TextStyle(fontFamily: secondary, fontSize: 12, color: Colors.white);

dynamic buttonstyle = TextStyle(
    fontFamily: secondary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: element);
