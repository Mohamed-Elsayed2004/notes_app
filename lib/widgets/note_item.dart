import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;
 
  const NoteItem({super.key, required this.note});

 

  @override
  Widget build(BuildContext context) {
    final DateTime date =  note.date;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(EditNoteView.id, arguments: note);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.only(left: 8, bottom: 24, top: 24),
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                 note.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                     note.subTitle,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.5),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fechAllNotes();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Icon(Icons.delete, color: Colors.black, size: 35),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 24),
              child: Text(
                '${date.month}/${date.day}/${date.year}',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
