import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines,
    this.onSaved,
  });
  final String hint;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
      },
      maxLines: maxLines,

      cursorColor: Colors.lightBlueAccent,
      decoration: InputDecoration(
        border: border(),
        enabledBorder: border(),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.lightBlueAccent),
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
