import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(30) ,
        ),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
        child: Icon(Icons.add, color: Colors.black),
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}
