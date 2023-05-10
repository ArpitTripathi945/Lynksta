import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';

class AuthLand extends StatefulWidget {
  const AuthLand({super.key});

  @override
  State<AuthLand> createState() => _AuthLandState();
}

class _AuthLandState extends State<AuthLand> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgcolor,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Image.asset("assets/lynksta_full.png"),
            SizedBox(height: 30),
            Text(
              "Welcome to Lynksta",
              style:
                  TextStyle(color: Colors.white, fontFamily: sen, fontSize: 18),
            ),
            SizedBox(height: 80),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    //stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [gradient1, gradient2]),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
