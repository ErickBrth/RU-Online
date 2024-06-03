import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.grey),
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: GoogleFonts.outfit(
          fontSize: 16,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
