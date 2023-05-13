import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/sign_up.dart';
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
                  "Choose the type of account",
                  style: TextStyle(
                      fontFamily: secondary, fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 190),
                Center(
                  child: ShadowButton(
                      height: 48,
                      width: 260,
                      text: "DJ Account",
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp()));
                      }),
                ),
                SizedBox(height: 48),
                Center(
                  child: ShadowButton(
                      height: 48,
                      width: 260,
                      text: "User Account",
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp()));
                      }),
                )
              ],
            ),
          ),
        ));
    ;
  }
}
