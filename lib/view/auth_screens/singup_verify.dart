import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class SignUpVerify extends StatefulWidget {
  const SignUpVerify({super.key});

  @override
  State<SignUpVerify> createState() => _SignUpVerifyState();
}

class _SignUpVerifyState extends State<SignUpVerify> {
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
                SizedBox(height: 80),
                Column(
                  children: [
                    SizedBox(
                        width: 226,
                        height: 291,
                        child: Image.asset("assets/verify.png")),
                    SizedBox(height: 62),
                    Text(
                      "Verification email has been sent",
                      style: textstyle1,
                    ),
                    SizedBox(height: 12),
                    Text("Check your inbox, or spam folder", style: textstyle2),
                    SizedBox(height: 42),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 18,
                            height: 18,
                            child: Icon(Icons.refresh, color: gradient1)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Refresh",
                          style: TextStyle(
                              fontFamily: secondary,
                              fontSize: 18,
                              color: gradient1),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
