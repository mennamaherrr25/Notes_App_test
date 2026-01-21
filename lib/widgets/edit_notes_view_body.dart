import 'package:flutter/material.dart';
import 'package:notes_app_test/widgets/custom_app_bar.dart';
import 'package:notes_app_test/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 42),
          CustomAppBar(text: 'Edit Notes', icon: Icons.done),

          Padding(
            padding: EdgeInsets.only(top: 22, bottom: 16),
            child: CustomTextField(title: 'Title'),
          ),

          // Padding(
          // padding: EdgeInsets.only(bottom: 16),
          // child:
          CustomTextField(
            title: 'Content',
            maxLines: 5,
            // topPadding: 40,
            // bottomPadding: 40,
            // ),
          ),
        ],
      ),
    );
  }
}
