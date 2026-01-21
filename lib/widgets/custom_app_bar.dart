import 'package:flutter/material.dart';
import 'package:notes_app_test/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 30, fontFamily: 'Poppins')),
        Spacer(flex: 1),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
