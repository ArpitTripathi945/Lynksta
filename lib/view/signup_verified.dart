import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/grad_button.dart';

class SignUpVerified extends StatefulWidget {
  const SignUpVerified({super.key});

  @override
  State<SignUpVerified> createState() => _SignUpVerifiedState();
}

class _SignUpVerifiedState extends State<SignUpVerified> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: bgcolor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 40, 40, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: loginstyle,
                ),
                SizedBox(height: 22),
                Text(
                  "Verify your email address",
                  style: TextStyle(
                      fontFamily: secondary, fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 140),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                          width: 200,
                          height: 180,
                          child: Image.asset("assets/verified.png")),
                      SizedBox(height: 72),
                      Text(
                        "Your email has been verified",
                        style: textstyle1,
                      ),
                      SizedBox(height: 12),
                      Text("Continue to finish sign up", style: textstyle2),
                      SizedBox(height: 58),
                      GradButton(text: "Next", onTap: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
