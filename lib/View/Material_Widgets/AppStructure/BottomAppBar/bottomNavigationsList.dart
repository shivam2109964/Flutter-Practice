import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationList extends StatelessWidget {
  const BottomNavigationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.amber.shade100,
            title: Text(
              "With Icon and Label",
              style: GoogleFonts.k2d(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
