import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/card_detailed.dart';
import 'package:lunksta/widgets/card_story.dart';
import 'package:lunksta/widgets/post.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class DjProfile extends StatefulWidget {
  const DjProfile({super.key});

  @override
  State<DjProfile> createState() => _DjProfileState();
}

class _DjProfileState extends State<DjProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: bgcolor,
            automaticallyImplyLeading: false,
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(width: 20),
                  Text("DJ Profile",
                      style: TextStyle(
                          fontFamily: secondary,
                          fontSize: 22,
                          color: gradient1,
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 200),
                ],
              )
            ],
          ),
          SliverToBoxAdapter(child: SizedBox(height: 38)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(47, 0, 0, 0),
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
                        "Lorem ipsum dolor sit \na met, consectetur adass",
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
          ),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShadowButton(
                      height: 48,
                      width: 142,
                      text: "Lynk(?)",
                      onPressed: () {}),
                  ShadowButton(
                      height: 48, width: 142, text: "Book", onPressed: () {})
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 36)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Events",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: secondary,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 92,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250,
                              childAspectRatio: 3 / 5,
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 18),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: element,
                              borderRadius: BorderRadius.circular(8.0)),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 36)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
              child: Text(
                "Posts",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: secondary,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
                  child: Post());
            },
          )),
        ],
      )),
    );
  }
}
