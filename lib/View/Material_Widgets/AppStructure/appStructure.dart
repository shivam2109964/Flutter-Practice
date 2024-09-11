import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View/Material_Widgets/AppStructure/BottomAppBar/bottomNavigationsList.dart';

class AppStructure extends StatelessWidget {
  const AppStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.deepPurple.shade100,
            title: Text(
              "Bottom Navigation",
              style: GoogleFonts.cabin(fontSize: 22),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavigationList(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
