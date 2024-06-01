import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFormField extends StatefulWidget {
  const LoginFormField({super.key});

  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            style: const TextStyle(color: Colors.white), // Define a cor do texto
            cursorColor: Colors.white, // Define a cor do cursor
            decoration: InputDecoration(
              labelText: 'Email or Phone',
              labelStyle: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 26),
          TextFormField(
            style: const TextStyle(color: Colors.white), // Define a cor do texto
            cursorColor: Colors.white, // Define a cor do cursor
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: GoogleFonts.outfit(
                fontSize: 16,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              hintStyle: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
