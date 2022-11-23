import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark);
}
