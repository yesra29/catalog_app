import 'package:flutter/material.dart';
import 'package:flutter_catalog/LoginPage.dart';
import 'package:flutter_catalog/homePage.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


// import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      // home: homePage (),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          // brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
          primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(
          brightness: Brightness.light,
      ),
      // initialRoute: "/home",
      routes: {
        "/" : (context) => loginPage(),
        MyRoutes.homeRoute : (context) => homePage(),
        MyRoutes.loginRoute :(context) => loginPage(),
      },
    );
  }
}


