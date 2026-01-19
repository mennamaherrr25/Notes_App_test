import 'package:flutter/material.dart';
import 'package:notes_app_test/widgets/custom_search_icon.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 45),
            Row(
              children: [
                Text(
                  'Notes',
                  style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                ),
                Spacer(flex: 1),
                CustomSearchIcon(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
