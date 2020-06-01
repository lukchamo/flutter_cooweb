import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ThemeChanger with ChangeNotifier {
  
  ThemeData _currentTheme;

  ThemeData get currentTheme => this._currentTheme;


  ThemeChanger(){
    _currentTheme = ThemeData.dark();
  }



}