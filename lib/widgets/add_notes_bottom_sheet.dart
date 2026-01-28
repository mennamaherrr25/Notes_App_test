import 'package:flutter/material.dart';
import 'package:notes_app_test/widgets/custom_button.dart';
import 'package:notes_app_test/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        
       bottom: MediaQuery.of(context).viewInsets.bottom,
      ), // 👈 الكيبورد),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 22,
                bottom: 16,
                left: 16,
                right: 16,
              ),
              child: CustomTextField(
                title: 'Title',
                // topPadding: 6,
                // bottomPadding: 6,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),

              child: CustomTextField(
                title: 'Content',
                maxLines: 5,
                // topPadding: 40,
                // bottomPadding: 40,
              ),
            ),

            CustomButton(),
          ],
        ),
      ),
    )
    //Container(decoration: BoxDecoration())
    ;
  }
}
