import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            text: 'Edit note',
            icon: Icon(Icons.check),
            onPressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subTitle = subTitle ?? widget.notes.subTitle;
              widget.notes.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          CustomTextField(
            hint: widget.notes.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(height: 15),
          CustomTextField(
            hint: widget.notes.subTitle,
            maxLines: 5,
            onChanged: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 20),
          EditNoteColors(notes: widget.notes),
        ],
      ),
    );
  }
}
