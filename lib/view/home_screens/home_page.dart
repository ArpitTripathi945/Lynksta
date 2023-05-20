import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/card_detailed.dart';
import 'package:lunksta/widgets/card_story.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/lynksta.png",
                    height: 42,
                    width: 42,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.format_list_bulleted_outlined,
                          size: 27,
                          color: gradient1,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.toggle_on_rounded,
                          size: 27,
                          color: gradient1,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.public_rounded,
                          size: 27,
                          color: gradient1,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.bookmark_border_outlined,
                      size: 30,
                      color: gradient1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: SizedBox(
                width: double.infinity,
                height: 120,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 1.25,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 10),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return CardStory();
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShadowButton(
                      height: 48, width: 150, text: "Sort", onPressed: () {}),
                  ShadowButton(
                      height: 48, width: 150, text: "Filter", onPressed: () {})
                ],
              ),
            ),
            SizedBox(height: 38),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(33, 0, 33, 0),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return CardDetailed();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
