import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
    static ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness:Brightness.light,
    fontFamily: GoogleFonts.poppins().fontFamily,
    primarySwatch: Colors.blue, // canvasColor: creamColor,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: Theme.of(context).textTheme.headline6,
    ),
  );
    static Color creamColor = Color(0xfff5f5f5);
    static Color BluishColor = Color(0xf44238);

}
