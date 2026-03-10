part of 'notes_cubit_cubit.dart';

@immutable
sealed class NoteState {}

final class NotesInitial extends NoteState {}
final class NotesLoading extends NoteState {}
final class NotesSuccess extends NoteState {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}
final class NotesFailure extends NoteState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
}
