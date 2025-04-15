import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines});
  final String hint;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,

      cursorColor: Colors.lightBlue,
      decoration: InputDecoration(
        border: border(),
        enabledBorder: border(),
        hintText: hint,
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      gapPadding: 16,
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
