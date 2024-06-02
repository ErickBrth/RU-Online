import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ru_online/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
                displaySmall: GoogleFonts.outfit(
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                ),
                bodyLarge: GoogleFonts.outfit(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: fromCssColor("#EA6721"),
                ),
            titleLarge: GoogleFonts.outfit(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
              ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: fromCssColor("#FFC600"),
              foregroundColor: Colors.black,
              textStyle: GoogleFonts.outfit(fontSize: 18)),
        ),
        useMaterial3: true,
      ),
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser,
      routeInformationProvider: routes.routeInformationProvider,
    );
  }
}
