import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/auth_land.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => AuthLand())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: bgcolor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(children: [
              SizedBox(height: 200),
              Image.asset("assets/lynksta.png"),
              SizedBox(height: 150),
              Image.asset("assets/lynksta_title.png"),
              SizedBox(height: 220),
              Text(
                "Copyright 2023",
                style: TextStyle(
                    fontFamily: sen, fontSize: 12, color: Colors.white),
              )
            ]),
          ),
        ));
  }
}
