import 'package:flutter/material.dart';
import 'package:notes_app_test/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, this.maxLines = 1});
  final String title;
  final int maxLines;
  // final double topPadding;
  // final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.blueGrey,
      // textAlign: TextAlign.center,
      decoration: InputDecoration(
        enabledBorder: BuildBorder(kPrimaryColor),
        focusedBorder: BuildBorder(Colors.white),
        // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        hintText: title,
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(.9),
          fontSize: 20,
          fontWeight: FontWeight.w100,
        ),
        //  Padding(
        //   padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
        //   child: Text(
        //     title,
        //     style: TextStyle(color: Colors.blueGrey, fontSize: 22),
        //   ),
        // ),
      ),
    );
  }

  OutlineInputBorder BuildBorder(Color borderColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: borderColor),
    );
  }
}
