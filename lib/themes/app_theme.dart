import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  AppTheme._();

  static const Color primary = Color(0xFF00D3C1);
  static const Color secondary = Color(0xFF2AABD3);
  static const Color info = Color(0xFFEDF0F2);
  static const Color danger = Color(0xFFEDF0F2);
  static const Color dark = Color(0xFFEDF0F2);


  
  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);


  static const TextStyle styleWhite = TextStyle(
    color: Colors.white
  );



  static const TextStyle title = TextStyle( // h6 -> title
    //fontFamily: ,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );



  static const Gradient primaryGradient = LinearGradient(
    begin: FractionalOffset(0.0, 0.4),
    end: FractionalOffset(0.0, 1.0),
    colors: [
      primary,
      secondary
    ]
  );

}