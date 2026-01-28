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
      child: SingleChildScrollView(child: AddNoteForm()),
    )
    //Container(decoration: BoxDecoration())
    ;
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
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
              onSaved: (value) {
                title = value;
              },
              title: 'Title',
              // topPadding: 6,
              // bottomPadding: 6,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),

            child: CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              title: 'Content',
              maxLines: 5,
              // topPadding: 40,
              // bottomPadding: 40,
            ),
          ),

          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } 
              else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
