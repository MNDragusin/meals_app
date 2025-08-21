import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final defaultTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(
      255, 251, 195, 152)),
  textTheme: GoogleFonts.latoTextTheme(),
);

final defaultDarkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 131, 50, 0)),
  textTheme: GoogleFonts.latoTextTheme(),
);
