import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/home_screens/events/event_page.dart';

class CardDetailed extends StatelessWidget {
  const CardDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => EventDetail()));
      },
      child: Container(
        height: 142,
        width: 302,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
                image: AssetImage("assets/list1.png"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              bottom: 25,
              left: 14,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 14,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 60,
              child: Text("Bamboozie'23",
                  style: TextStyle(
                      fontFamily: secondary,
                      fontSize: 14,
                      color: Colors.white)),
            ),
            Positioned(
              bottom: 15,
              left: 60,
              child: Text("Come get in your zone\nat Bamboozle'23, we got eve.",
                  style: TextStyle(
                      fontFamily: secondary,
                      fontSize: 10,
                      color: Colors.white)),
            ),
            Positioned(
                bottom: 20,
                left: 255,
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.bookmark_border_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
