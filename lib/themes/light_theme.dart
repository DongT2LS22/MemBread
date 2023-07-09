import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  dividerColor: Colors.grey[300],
    brightness: Brightness.light,
    primaryColor: Color.lerp(const Color.fromARGB(255, 59, 117, 245),
        const Color.fromARGB(255, 76, 142, 246), 1)!,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Color.lerp(const Color.fromARGB(255, 59, 117, 245),
          const Color.fromARGB(255, 76, 142, 246), 1)!,
      secondary: Colors.grey[300]!,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: GoogleFonts.lato(
            textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20)),
        iconTheme: const IconThemeData(size: 20, color: Colors.black)),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
        titleMedium: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
        titleSmall: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        displayMedium: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        displayLarge: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
        displaySmall: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        labelMedium: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white))));
