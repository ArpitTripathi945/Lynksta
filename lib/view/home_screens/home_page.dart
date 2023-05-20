import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/card_detailed.dart';
import 'package:lunksta/widgets/card_story.dart';

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
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      CardStory(),
                    ],
                  ),
                  CardDetailed(),
                ],
              )),
        ),
      ),
    );
  }
}
