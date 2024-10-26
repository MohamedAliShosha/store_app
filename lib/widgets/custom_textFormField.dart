import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.onChanged,
      this.inputType,
      this.hintText,
      this.obscuredText = false});

  Function(String)? onChanged;
  String? hintText;
  bool? obscuredText; // I gave  it a default value of false
  TextInputType? inputType; // I added this variable

  @override
  Widget build(BuildContext context) {
    return TextField(
      // I changed TextFormField to TextField

      obscureText: obscuredText!,
      // there was a validator here, but I removed it as we don't need it to check data
      onChanged: onChanged,
      keyboardType: inputType, // Used to specify the input type
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(),
        ),
      ),
    );
  }
}
