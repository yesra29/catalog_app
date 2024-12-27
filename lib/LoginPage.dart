import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


class loginPage extends StatefulWidget {
  const loginPage ({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  String name = "" ;
  bool changedButton = false;


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
          Text("Welcome $name",
              style: GoogleFonts.poppins(
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
                  onChanged: (value){
                    name = value;
                    setState(() {

                    });
                  },
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

                InkWell(
                  onTap: () async {
                    setState(() {
                      changedButton =true;
                    });

                    await Future.delayed(Duration(seconds :1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changedButton?60 :110,
                    height: 50,
                    alignment: Alignment.center,
                    child: changedButton ?Icon(Icons.done,color: Colors.white,
                    )
                    :Text(
                      "Login",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade300,
                      borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                    ),
                  ),
                ),
      //           ElevatedButton(
      //             child: Text("Login"),
      //             style: TextButton.styleFrom(minimumSize: Size(120,50)),
      //               onPressed: () {
      //                 Navigator.pushNamed(context, MyRoutes.homeRoute);
      // },
      //           ),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}
