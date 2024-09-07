import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerDesignTwo extends StatelessWidget {
  const DrawerDesignTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer Design",
          style: GoogleFonts.jacquesFrancois(fontSize: 20),
        ),
      ),
    );
  }
}
