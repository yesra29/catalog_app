import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl= "https://www.pngitem.com/middle/ixbJwTx_avatar-icon-human-user-avatar-svg-hd-png/";
    return Drawer(
      child: Container(
        color: Colors.grey.shade100,
        child: ListView(
          padding: EdgeInsets.zero,
           children: [
             DrawerHeader(
               padding: EdgeInsets.zero,
                 child: UserAccountsDrawerHeader(
                   margin: EdgeInsets.zero,
                     decoration: BoxDecoration(
                       color: Colors.white,
                     ),
                     accountName: Text("Yesra Fatima"),
                     accountEmail: Text("Fyesra0@gmail.com"),
                   currentAccountPicture: CircleAvatar(
                     backgroundImage: AssetImage("assets/image/myPic.jpg"),
                   )
                 ),
             ),
             ListTile(
               leading: Icon(CupertinoIcons.home,
                 color: Colors.black,),
               title: Text(
                 "Home",
               textScaleFactor: 1.3,
               ),
             ),
             ListTile(
               leading: Icon(CupertinoIcons.profile_circled,
                 color: Colors.black,),
               title: Text(
                 "Profile",
                 textScaleFactor: 1.3,
               ),
             ),
             ListTile(
               leading: Icon(CupertinoIcons.mail,
                 color: Colors.black,),
               title: Text(
                 "E-mail me",
                 textScaleFactor: 1.3,
               ),
             ),
           ],
        ),
      ),
    );
  }
}
