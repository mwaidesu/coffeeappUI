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

  final List coffeeTile = [
    ["https://images.pexels.com/photos/57690/pexels-photo-57690.jpeg", "\$20.00", "With Almond Milk", "Cappucino"],
    ["https://images.pexels.com/photos/544113/pexels-photo-544113.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "\$10.00", "With Extra Cream", "Americano"],
    ["https://images.pexels.com/photos/2074122/pexels-photo-2074122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "\$15.00", "Freshly Roasted Beans", "Strungi"],
    ["https://images.pexels.com/photos/1579043/pexels-photo-1579043.jpeg?auto=compress&cs=tinysrgb&w=400", "\$12.00", "Ethiopian Coffee", "Chai Dubia"],
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
            icon: Icon(Icons.home,
            color: Colors.orange,),
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

          SizedBox(
            height: 25.0,
          ),

          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeeTile.length,
                  itemBuilder: ((context, index) {
                    return CoffeeTile(
                        image:coffeeTile[index][0],
                        price: coffeeTile[index][1],
                        subtitle: coffeeTile[index][2],
                        name: coffeeTile[index][3]
                        
                        
                        
                        );
                  }))),
          //bottom nav bar
        ],
      ),
    );
  }
}
