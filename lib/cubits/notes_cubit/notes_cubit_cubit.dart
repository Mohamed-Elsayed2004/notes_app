import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fechAllNotes() async {
    var notesBox = await Hive.openBox<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();

    emit(NotesFechedSuccess());
  }
}
