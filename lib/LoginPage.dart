import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


class loginPage extends StatefulWidget {
  const loginPage ({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  String name = " " ;
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
    child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset("assets/image/Login.png",
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
              padding: const EdgeInsets.symmetric(
                  vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },

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
                    validator: (value) {
                      if( value==null || value.isEmpty) {
                        return "Password cannot be empty";
                      }
                      else if (value.length<6) {
                        return "Password length shoulb be atleast 6";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
        
                  Material(
                    color: Colors.deepPurple.shade400,
                    borderRadius:
                    BorderRadius.circular(changedButton ? 50 : 8),
                    child: InkWell(
                      onTap: () => moveToHome(context),
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
                          // color: Colors.deepPurple.shade300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
