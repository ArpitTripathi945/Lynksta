import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class DjProfile extends StatefulWidget {
  const DjProfile({super.key});

  @override
  State<DjProfile> createState() => _DjProfileState();
}

class _DjProfileState extends State<DjProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(width: 30),
                Text("DJ Profile",
                    style: TextStyle(
                        fontFamily: secondary,
                        fontSize: 22,
                        color: gradient1,
                        fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 48,
                        backgroundColor: gradient1,
                        child: CircleAvatar(
                          maxRadius: 45,
                          backgroundColor: element,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Artist Name",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: secondary,
                            fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "xx,xxx lynks",
                        style: TextStyle(
                            color: gradient1,
                            fontFamily: secondary,
                            fontSize: 14),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Lorem ipsum dolor sit\n a met, consectetur adass",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: secondary,
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShadowButton(
                    height: 48, width: 142, text: "Lynk(?)", onPressed: () {}),
                ShadowButton(
                    height: 48, width: 142, text: "Book", onPressed: () {})
              ],
            ),
          ],
        ),
      )),
    );
  }
}
