import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  // The iconTheme property of the AppBar widget is used to specify the styling
  // for the leading icon, which is typically the menu icon.
  // By setting IconThemeData(color: Colors.green),
  // the color of the leading icon in the app bar is changed to green.
  iconTheme: IconThemeData(color: myDefaultBackground),
);

var myDrawer = Drawer(
  // elevation: 1,
  backgroundColor: myDefaultBackground,
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(Icons.favorite),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("Message"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Settings"),
      ),
      const Spacer(),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("Deconnexion"),
      ),
    ],
  ),
);
