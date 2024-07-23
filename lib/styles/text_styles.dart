import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle projectsTitle = GoogleFonts.workSans(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle projectItem = GoogleFonts.montserrat(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle newProjectButton = GoogleFonts.workSans(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle menuItem = GoogleFonts.poppins(
    fontSize: 15,
    color: Colors.white,
  );

  static TextStyle selectedMenuItem = GoogleFonts.poppins(
    fontSize: 15,
    color: Color.fromARGB(255, 255, 145, 76),
    decoration: TextDecoration.underline,
    decorationColor: Color.fromARGB(255, 255, 145, 76),
    decorationThickness: 2,
  );

  static TextStyle cardText = GoogleFonts.montserrat(
    fontSize: 15,
    color: Colors.black,
  );
}
