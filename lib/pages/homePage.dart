import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
class homePage  extends StatelessWidget {
  final int days=30;
  final String name= "Yesra";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Catalog App",
          style: GoogleFonts.poppins(fontSize: 25),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: myDrawer(),
    );
  }
}
