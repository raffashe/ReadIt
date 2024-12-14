import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  // título
  static TextStyle titleStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
      color: Color(0xFFD7DDE4),
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  );
  // Subtitulo
  static TextStyle subTextSecondary = GoogleFonts.inter(
    textStyle: const TextStyle(
      color: Color.fromARGB(255, 177, 177, 177),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.42,
      height: 0,
    ),
  );

  // Estilo para o botão principal
  static TextStyle buttonTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      height: 0.08,
    ),
  );

  // Estilo do texto no botão
  static TextStyle buttonTextSecondary = GoogleFonts.inter(
    textStyle: const TextStyle(
      color: Color(0xFFD7DDE4),
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.42,
      height: 0,
    ),
  );

  static const Color bg = Color(0x63000000); // Cor do background
  static const Color buttonColor = Color(0xFF4A90E2); // Cor do botão
}
