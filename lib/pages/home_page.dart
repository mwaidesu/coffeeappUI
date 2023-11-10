// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(padding: EdgeInsets.only(right: 25.0,
          ),
          child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: 
      BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
        ],
      ),
      body: Column(
        children: [
              //best coffee title
          Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Text("F I N D   T H E  B E S T  C O F F E E  E V E R",
          style: GoogleFonts.bebasNeue(
            fontSize: 56,

          ),
          ),),
          SizedBox(height: 25,),
      



          //searchbar

          //horizontal listview

          //bottom nav bar
        ],
      ),
    );
  }
}
