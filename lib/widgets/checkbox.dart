import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 16,
        width: 16,
        color: element,
        child: Checkbox(
            value: isChecked,
            activeColor: element,
            onChanged: (newBool) {
              setState(() {
                isChecked = newBool;
              });
            }),
      ),
    );
  }
}
