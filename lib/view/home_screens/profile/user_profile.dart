import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: gradient2,
                            size: 20,
                          )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: element,
                        radius: 48,
                      ),
                      SizedBox(height: 32),
                      Text(
                        "User name",
                        style: TextStyle(
                            fontFamily: secondary,
                            color: gradient1,
                            fontSize: 24),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "type of user .... information",
                        style: TextStyle(
                            fontFamily: secondary,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      SizedBox(height: 50),
                      ShadowButton(
                          height: 48,
                          width: 200,
                          text: "Edit Profile",
                          onPressed: () {}),
                      SizedBox(height: 28),
                      ShadowButton(
                          height: 48,
                          width: 200,
                          text: "Settings",
                          onPressed: () {}),
                      SizedBox(height: 28),
                      ShadowButton(
                          height: 48,
                          width: 200,
                          text: "Privacy Policy",
                          onPressed: () {}),
                      SizedBox(height: 28),
                      ShadowButton(
                          height: 48,
                          width: 200,
                          text: "About Us",
                          onPressed: () {}),
                      SizedBox(height: 50),
                      Text("Lynksta v0.0.1",
                          style: TextStyle(
                              color: gradient1,
                              fontFamily: secondary,
                              fontSize: 12))
                    ],
                  )
                ],
              ))),
    );
  }
}
