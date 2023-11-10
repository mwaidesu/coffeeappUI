// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network("https://images.pexels.com/photos/14704661/pexels-photo-14704661.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                children: [
                  Text(
                    "Americano",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "with Almond Milk",
                    style: GoogleFonts.bebasNeue(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),

            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$10.00",
                  style: GoogleFonts.bebasNeue(
            
                  ),),
            
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(Icons.add),
            
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
