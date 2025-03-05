import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    //? theme extrasa in pachet-> fisier separat
    textTheme: TextTheme(
      displaySmall: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.normal,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade300,
        fixedSize: Size(320, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Colțuri rotunjite
        ),
        textStyle: TextStyle(color: Colors.black, fontSize: 24),
      ),
    ),
  );
}
