import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteState>(
      builder: (context, state) {
        if (state is NotesFechedSuccess) {
          List<NoteModel> notes =
              BlocProvider.of<NotesCubit>(context).notes ?? [];
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: notes.length,
            itemBuilder: (contex, index) {
              return NoteItem(note: notes[index]);
            },
          );
        } else {
          return const Center(child: Text('No notes to display'));
        }
      },
    );
  }
}
