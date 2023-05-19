import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/auth_screens/sign_in.dart';
import 'package:lunksta/view/auth_screens/sign_up.dart';
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
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 48, 8, 8),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    width: 260,
                    height: 120,
                    child: Image.asset("assets/lynksta_full.png")),
                SizedBox(height: 30),
                Text(
                  "Welcome to Lynksta",
                  style: TextStyle(
                      color: Colors.white, fontFamily: secondary, fontSize: 20),
                ),
                SizedBox(height: 80),
                ShadowButton(
                  width: 200,
                  height: 48,
                  text: "Login",
                  onPressed: () {
                    Navigator.of(context).push(_createRouteSignIn());
                  },
                ),
                SizedBox(height: 30),
                ShadowButton(
                  width: 200,
                  height: 48,
                  text: "Signup",
                  onPressed: () {
                    Navigator.of(context).push(_createRouteSignUp());
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
                          "Sign In with Apple",
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
                  height: 78,
                ),
                Text(
                  "Copyright 2023",
                  style: copyright,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Route _createRouteSignIn() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const SignIn(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route _createRouteSignUp() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const SignUp(),
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
