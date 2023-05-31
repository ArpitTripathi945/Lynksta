import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 15, 40, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Search",
              style: TextStyle(
                  fontSize: 24, fontFamily: primary, color: gradient2),
            ),
            SizedBox(height: 30),
            TextFormField(
              onTap: () {},
              textInputAction: TextInputAction.done,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: secondary),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: gradient2,
                  size: 20,
                ),
                labelText: "Search anything",
                labelStyle: TextStyle(
                    color: gradient2, fontFamily: secondary, fontSize: 14),
                filled: true,
                fillColor: element,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: element),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: gradient2),
                ),
                contentPadding: EdgeInsets.all(13.0),
              ),
            ),
            SizedBox(height: 46),
            Center(
                child: Text(
              "Search DJ's",
              style: TextStyle(
                  fontFamily: tertiary, fontSize: 16, color: Colors.white),
            )),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ShadowButton(
                        height: 84, width: 84, text: "", onPressed: () {})
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor\nsit amet, conse rfk\nctetur adipiscing\nelit. adipiscing jbrf",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: secondary,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 42),
            Center(
                child: Text("Search Events",
                    style: TextStyle(
                        fontFamily: tertiary,
                        fontSize: 16,
                        color: Colors.white))),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ShadowButton(
                        height: 84, width: 84, text: "", onPressed: () {})
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor\nsit amet, conse rfk\nctetur adipiscing\nelit. adipiscing jbrf",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: secondary,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 42),
            Center(
                child: Text("Search Locations",
                    style: TextStyle(
                        fontFamily: tertiary,
                        fontSize: 16,
                        color: Colors.white))),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ShadowButton(
                        height: 84, width: 84, text: "", onPressed: () {})
                  ],
                ),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor\nsit amet, conse rfk\nctetur adipiscing\nelit. adipiscing jbrf",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: secondary,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      )),
    );
  }
}
