import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: HexColor('#1D2026'),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: HexColor('#1D2026'),
      iconTheme: IconThemeData(
        color: Colors.black54,
      ),
    ),
  );
}
