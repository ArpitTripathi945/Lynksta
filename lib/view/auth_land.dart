import 'package:flutter/material.dart';
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
            Image.asset("assets/lynksta_full.png"),
            SizedBox(height: 30),
            Text(
              "Welcome to Lynksta",
              style: TextStyle(
                  color: Colors.white, fontFamily: secondary, fontSize: 18),
            ),
            SizedBox(height: 80),
            ShadowButton(
              height: 190,
              width: 45,
              text: "Login",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignIn()));
              },
            ),
            SizedBox(height: 30),
            ShadowButton(
              height: 190,
              width: 45,
              text: "Signup",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignUp()));
              },
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
