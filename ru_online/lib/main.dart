import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:ru_online/presentation/login/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ru Online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: fromCssColor("#FFC600")),
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme.copyWith(
            displayLarge: GoogleFonts.outfit(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: fromCssColor("#FFC600"),
            foregroundColor: Colors.black,
            textStyle: GoogleFonts.outfit(
              fontSize: 18
            )
          ),
        ),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}


