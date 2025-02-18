import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/LoginPage.dart';
import 'package:flutter_catalog/pages/homePage.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';


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
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" : (context) => const loginPage(),
        MyRoutes.homeRoute : (context) => homePage(),
        MyRoutes.loginRoute :(context) => const loginPage(),

      },
    );
  }
}


