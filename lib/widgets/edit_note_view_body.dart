
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomTextField(hint: 'Title'),CustomTextField(hint: 'Content',maxLines: 5,)],);
  }
}