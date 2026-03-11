import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  const CustomTextFormField({
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field requierd';
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kprimaryColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kprimaryColor),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder({Color? color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color == null ? Colors.white : color),
    borderRadius: BorderRadius.circular(8),
  );
}
