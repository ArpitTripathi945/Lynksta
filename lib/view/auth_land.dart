import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/sign_in.dart';
import 'package:lunksta/view/sign_up.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class AuthLand extends StatefulWidget {
  const AuthLand({super.key});

  @override
  State<AuthLand> createState() => _AuthLandState();
}

class _AuthLandState extends State<AuthLand> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            SizedBox(
                width: 260,
                height: 120,
                child: Image.asset("assets/lynksta_full.png")),
            SizedBox(height: 30),
            Text(
              "Welcome to Lynksta",
              style: TextStyle(
                  color: Colors.white, fontFamily: secondary, fontSize: 18),
            ),
            SizedBox(height: 80),
            ShadowButton(
              width: 200,
              height: 48,
              text: "Login",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignIn()));
              },
            ),
            SizedBox(height: 30),
            ShadowButton(
              width: 200,
              height: 48,
              text: "Signup",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignUp()));
              },
            ),
            SizedBox(height: 80),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48,
                width: 306,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset("assets/google.png")),
                    SizedBox(width: 20),
                    Text(
                      "Sign In with Google",
                      style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48,
                width: 306,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset("assets/apple.png")),
                    SizedBox(width: 20),
                    Text(
                      "Sign In with Google",
                      style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 86,
            ),
            Text(
              "Copyright 2023",
              style: TextStyle(
                  fontFamily: secondary, fontSize: 12, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
