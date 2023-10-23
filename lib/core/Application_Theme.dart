import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: GoogleFonts.libreBaskerville(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.libreBaskerville(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.libreBaskerville(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.libreBaskerville(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.libreBaskerville(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: Color(0xff027A48),

      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      )

    )
  );
}
