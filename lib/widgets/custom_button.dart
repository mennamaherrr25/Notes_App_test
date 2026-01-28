import 'package:flutter/material.dart';
import 'package:notes_app_test/constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16, top: 45, bottom: 30),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(bottom: 10, top: 10),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text('Add', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
