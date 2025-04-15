import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'edit note view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(text: 'Edit note', icon: Icon(Icons.check)),
            SizedBox(height: 50),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 15),
            CustomTextField(hint: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
