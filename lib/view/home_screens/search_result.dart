import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/post.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
                  SizedBox(width: 30),
                  Text("Results",
                      style: TextStyle(
                          fontFamily: secondary,
                          fontSize: 22,
                          color: gradient1,
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 220),
                ],
              )
            ],
          ),
          SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShadowButton(
                      height: 48, width: 142, text: "Sort", onPressed: () {}),
                  ShadowButton(
                      height: 48, width: 142, text: "Filter", onPressed: () {})
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (context, index) {
              return Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
                  child: Container(
                    width: 302,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: element),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Divider(
                              thickness: 3, endIndent: 200, color: gradient1),
                          Divider(
                            color: gradient1,
                            thickness: 1,
                            endIndent: 220,
                          )
                        ],
                      ),
                    ),
                  ));
            },
          )),
        ],
      )),
    );
  }
}
