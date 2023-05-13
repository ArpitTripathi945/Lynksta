import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/checkbox.dart';
import 'package:lunksta/widgets/grad_button.dart';
import 'package:lunksta/widgets/grad_text_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool? isChecked = false;

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
                  "Sign In",
                  style: loginstyle,
                ),
                SizedBox(height: 80),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: tertiary,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      GradTextField(),
                      SizedBox(height: 30),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontFamily: tertiary,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      GradTextField(),
                      SizedBox(height: 43),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 22),
                    Check(),
                    SizedBox(width: 10),
                    Text(
                      "Remember me",
                      style: TextStyle(
                          fontFamily: tertiary,
                          fontSize: 13,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 133),
                Center(
                  child: GradButton(text: "Sign In", onPressed: () {}),
                )
              ],
            ),
          ),
        ));
  }
}
