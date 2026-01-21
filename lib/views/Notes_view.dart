import 'package:flutter/material.dart';
import 'package:notes_app_test/widgets/add_notes_bottom_sheet.dart';
import 'package:notes_app_test/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNotesBottomSheet();
            },
          );
        },

        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add, size: 40, color: Colors.white),
        //hoverColor: Colors.black,
        //  focusColor: Colors.black,
      ),
    );
  }
}
