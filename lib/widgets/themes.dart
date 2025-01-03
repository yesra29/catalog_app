import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme{
   static ThemeData lightTheme (BuildContext context) =>ThemeData(
// brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
    ),
  );

   static ThemeData darkTheme (BuildContext context) =>ThemeData(
      brightness: Brightness.dark,
   );
}
