import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerDesignOne extends StatelessWidget {
  const DrawerDesignOne({super.key});

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
      drawer: ClipPath(
        clipper: OvalRightBorderClipper(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Drawer(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/profile.png",
                      height: 120,
                    ),
                  ),
                  Text(
                    "Shivam",
                    style: GoogleFonts.exo2(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "sg2109964@gmail.com",
                    style: GoogleFonts.exo2(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: Text(
                      "Home",
                      style: GoogleFonts.exo2(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                    ),
                    title: Text(
                      "Profile",
                      style: GoogleFonts.exo2(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.message,
                    ),
                    title: Text(
                      "Message",
                      style: GoogleFonts.exo2(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.info,
                    ),
                    title: Text(
                      "About",
                      style: GoogleFonts.exo2(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
