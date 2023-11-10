// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffeeui/util/coffee_tile.dart';
import 'package:coffeeui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//list of coffee types
  final List coffeeType = [
    [
      "Cappucino",
      false,
    ],
    [
      "Americano",
      true,
    ],
    [
      "Latte",
      false,
    ],
    [
      "Chai tea",
      false,
    ],
    [
      "Strungi",
      false,
    ],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 25.0,
            ),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "F I N D   T H E  B E S T  C O F F E E    E V E R !",
              style: GoogleFonts.bebasNeue(
                fontSize: 56,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //searchbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find Your Cup of Coffee...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 25.0,
          ),
          //coffee types list view
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                      coffeeType: coffeeType[index][0],
                      isSelected: coffeeType[index][1],
                      onTap: () {
                        // isSelected = !isSelected;
                        coffeeTypeSelected(index);
                      });
                }),
          ),

          //bottom nav bar
        ],
      ),
    );
  }
}
