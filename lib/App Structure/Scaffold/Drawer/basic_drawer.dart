import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicDrawer extends StatelessWidget {
  const BasicDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shivam",
          style: GoogleFonts.exo2(fontSize: 22),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/home.png"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Shivam Gupta",
                    style: GoogleFonts.exo2(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    "sg2109964@gmail.com",
                    style: GoogleFonts.exo2(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Privacy Policy",
                  style: GoogleFonts.exo2(
                    fontSize: 22,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
