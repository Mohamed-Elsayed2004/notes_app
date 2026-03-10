part of 'notes_cubit_cubit.dart';

@immutable
sealed class NoteState {}

final class NotesInitial extends NoteState {}
final class NotesFechedSuccess extends NoteState {}
