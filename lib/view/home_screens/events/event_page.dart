import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/widgets/shadow_button.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: bgcolor,
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                      height: 280,
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0)),
                      )),
                  Positioned(
                      child: SizedBox(
                    height: 240,
                    width: 390,
                    child: Image.asset(
                      "assets/list1.png",
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  )),
                  Positioned(
                    top: 15.0,
                    left: 30.0,
                    right: 0.0,
                    child: Row(
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
                        Text("Event",
                            style: TextStyle(
                                fontFamily: secondary,
                                fontSize: 22,
                                color: gradient1,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 245),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 216,
                      left: 36,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Container(
                                height: 45,
                                width: 105,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: gradient1),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_pin),
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: secondary,
                                          fontSize: 14),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            child: Container(
                                height: 45,
                                width: 105,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: gradient1),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_month),
                                    Text(
                                      " Date",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: secondary,
                                          fontSize: 14),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text("Event name Test",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: tertiary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                  subtitle: Text("Event summary one liner",
                      style: TextStyle(
                          color: gradient2,
                          fontFamily: tertiary,
                          fontSize: 16)),
                  trailing: Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: element),
                    child: Icon(
                      Icons.bookmark,
                      size: 30,
                      color: gradient1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, right: 36),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: element,
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text("Artist name",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: tertiary,
                                fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: element,
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text("Genre1, Genre2",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: tertiary,
                                fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Container(
                      height: 150,
                      width: 360,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Leo, porttitor posuere mattis at faucibus massa, id. Aliquet bibendum velit purus eget eget arcu lectus diam metus. Lorem adipiscing luctus mi arcu tellus. Tellus varius congue dictum sapien et accumsan. Pellentesque ante praesent nisl non ornare. Malesuada auctor",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShadowButton(
                            height: 52,
                            width: 52,
                            text: "",
                            onPressed: () {
                              showModalBottomSheet(
                                  barrierColor: Colors.white.withOpacity(0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15))),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  backgroundColor: element,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 300,
                                      decoration: BoxDecoration(
                                        color: element,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15)),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(38, 25, 38, 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Share",
                                              style: TextStyle(
                                                  fontFamily: primary,
                                                  fontSize: 24,
                                                  color: gradient1),
                                            ),
                                            SizedBox(height: 28),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor: gradient1,
                                                ),
                                                CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor: gradient2,
                                                ),
                                                CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor: gradient1,
                                                ),
                                                CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor: gradient2,
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ShadowButton(
                                                    height: 48,
                                                    width: 142,
                                                    text: "New Chat",
                                                    onPressed: () {}),
                                                ShadowButton(
                                                    height: 48,
                                                    width: 142,
                                                    text: "New Group",
                                                    onPressed: () {})
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                            ShadowButton(
                                                height: 48,
                                                width: 303,
                                                text: "Share Externally",
                                                onPressed: () {})
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }),
                        ShadowButton(
                            height: 52, width: 52, text: "", onPressed: () {}),
                        ShadowButton(
                            height: 52, width: 52, text: "", onPressed: () {}),
                        ShadowButton(
                            height: 52, width: 52, text: "", onPressed: () {})
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
