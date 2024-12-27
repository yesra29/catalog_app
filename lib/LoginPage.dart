import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


class loginPage extends StatelessWidget {
  const loginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset("assets/image/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5,
          ),
          Text("Welcome", style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold
          )),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(120,50)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
      },
                ),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}
