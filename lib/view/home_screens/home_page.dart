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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                backgroundColor: bgcolor,
                automaticallyImplyLeading: false,
                actions: <Widget>[
                  Row(
                    children: [
                      Image.asset(
                        "assets/lynksta.png",
                        height: 42,
                        width: 42,
                      ),
                      SizedBox(width: 78),
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
                      SizedBox(width: 78),
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
                  SizedBox(width: 25),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
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
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShadowButton(
                          height: 48,
                          width: 150,
                          text: "Sort",
                          onPressed: () {}),
                      ShadowButton(
                          height: 48,
                          width: 150,
                          text: "Filter",
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(35, 18, 35, 0),
                    child: CardDetailed(),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
