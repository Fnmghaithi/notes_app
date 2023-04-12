import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });
  final Note note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 32.0),
            CustomTextField(
              hint: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              hint: widget.note.subtitle,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            ),
            const SizedBox(height: 16.0),
            EditNoteColorsListView(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
