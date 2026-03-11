import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/edit_note_view_body.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class EditNoteView extends StatelessWidget {
  static final String id = 'EditNoteView';
  
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    final NoteModel note= ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(body: EditNoteViewBody(note: note));
  }
}
