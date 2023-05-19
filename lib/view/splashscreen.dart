import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/auth_screens/auth_land.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(_createRoute()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: bgcolor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(children: [
                SizedBox(height: 172),
                SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset("assets/lynksta.png")),
                SizedBox(height: 150),
                SizedBox(
                    height: 54,
                    width: 194,
                    child: Image.asset("assets/lynksta_title.png")),
                SizedBox(height: 220),
                Text(
                  "Copyright 2023",
                  style: TextStyle(
                      fontFamily: secondary, fontSize: 12, color: Colors.white),
                )
              ]),
            ),
          ),
        ));
  }

  // Animated transition between pages
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const AuthLand(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
