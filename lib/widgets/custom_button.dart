import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  bool isLoading;
  CustomButton({
    required this.text,
    required this.onTap,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: AlignmentGeometry.center,
        width: double.infinity,
        height: 50,

        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: isLoading == true
            ? SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(color: Colors.black),
              )
            : Text(text, style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );
  }
}
