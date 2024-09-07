import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOpen extends StatelessWidget {
  const ProfileOpen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shivam",
          style: GoogleFonts.exo2(
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Profile",
          style: GoogleFonts.exo2(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}