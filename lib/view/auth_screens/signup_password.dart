import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/auth_screens/singup_verify.dart';
import 'package:lunksta/widgets/grad_button.dart';
import 'package:lunksta/widgets/grad_text_field.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
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
                Text("Enter a strong password", style: textstyle1),
                SizedBox(height: 51),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password", style: textstyle2),
                      SizedBox(height: 10),
                      GradTextField(),
                      SizedBox(height: 30),
                      Text("Confirm Password", style: textstyle2),
                      SizedBox(height: 10),
                      GradTextField(),
                    ],
                  ),
                ),
                SizedBox(height: 75),
                Center(
                  child: GradButton(
                      text: "Next",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignUpVerify()));
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
