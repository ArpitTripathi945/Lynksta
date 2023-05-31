import 'package:flutter/material.dart';
import 'package:lunksta/constants.dart';

class GradTextField extends StatelessWidget {
  const GradTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 48,
      child: TextFormField(
        onTap: () {},
        textInputAction: TextInputAction.done,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style:
            TextStyle(color: Colors.white, fontSize: 18, fontFamily: secondary),
        decoration: InputDecoration(
          filled: true,
          fillColor: element,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: element),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: gradient1),
          ),
          contentPadding: EdgeInsets.all(13.0),
        ),
      ),
    );
  }
}
