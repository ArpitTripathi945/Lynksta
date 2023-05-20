import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';

class CardStory extends StatelessWidget {
  const CardStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: bgcolor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        child: Stack(
          children: [
            Image.asset(
              "assets/grid1.png",
              height: 112,
              width: 87,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 12,
                right: 47,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 14,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
