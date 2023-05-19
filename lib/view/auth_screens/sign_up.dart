import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/auth_screens/signup_password.dart';
import 'package:lunksta/widgets/checkbox.dart';
import 'package:lunksta/widgets/grad_button.dart';
import 'package:lunksta/widgets/grad_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                Text("Sign up using your email", style: textstyle1),
                SizedBox(height: 51),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("First Name", style: textstyle2),
                      SizedBox(height: 10),
                      GradTextField(),
                      SizedBox(height: 30),
                      Text("Last Name", style: textstyle2),
                      SizedBox(height: 10),
                      GradTextField(),
                      SizedBox(height: 30),
                      Text("Email", style: textstyle2),
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
                            builder: (BuildContext context) =>
                                SignUpPassword()));
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
