import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';
import 'package:lunksta/view/home_screens/home_page.dart';
import 'package:lunksta/view/home_screens/messages_page.dart';
import 'package:lunksta/view/home_screens/profile_page.dart';
import 'package:lunksta/view/home_screens/search_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _Navigation();
}

class _Navigation extends State<Navigation> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    ProfilePage(),
    SearchPage(),
    MessagesPage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(28.0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [gradient1, gradient2])),
            child: Icon(
              Icons.qr_code_scanner_outlined,
              size: 30,
            ),
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: element,
            notchMargin: -40,
            child: Container(
                height: 64,
                width: 348,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: gradient2,
                      blurRadius: 3.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 61.0), //(x,y)
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 80,
                          onPressed: () {
                            setState(() {
                              currentScreen = HomePage();
                              currentIndex = 0;
                            });
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home,
                                  color:
                                      currentIndex == 0 ? gradient2 : gradient1,
                                ),
                              ]),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = SearchPage();
                              currentIndex = 1;
                            });
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search_rounded,
                                  color:
                                      currentIndex == 1 ? gradient2 : gradient1,
                                ),
                              ]),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = MessagesPage();
                              currentIndex = 2;
                            });
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.message,
                                  color:
                                      currentIndex == 2 ? gradient2 : gradient1,
                                ),
                              ]),
                        ),
                        MaterialButton(
                          minWidth: 80,
                          onPressed: () {
                            setState(() {
                              currentScreen = MessagesPage();
                              currentIndex = 3;
                            });
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.bar_chart_rounded,
                                  color:
                                      currentIndex == 3 ? gradient2 : gradient1,
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
