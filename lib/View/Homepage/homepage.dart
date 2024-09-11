import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View/BottomNavigation/bottom_Navi_one.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Practice",
          style: GoogleFonts.k2d(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          ListTile(
            tileColor: Colors.deepPurple.shade100,
            title: Text(
              "Bottom Navigation 1",
              style: GoogleFonts.cabin(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNaviOne(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
