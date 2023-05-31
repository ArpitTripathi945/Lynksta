import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: Container(
        height: 250,
        width: 322,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 322,
              decoration: BoxDecoration(
                  color: element, borderRadius: BorderRadius.circular(8.0)),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 25,
                        color: gradient1,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Icon(
                        Icons.message,
                        size: 25,
                        color: gradient1,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "124",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  Icon(
                    Icons.share,
                    size: 25,
                    color: gradient1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
