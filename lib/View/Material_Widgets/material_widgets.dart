import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View/Material_Widgets/AppStructure/appStructure.dart';

class Material_Widgets extends StatelessWidget {
  const Material_Widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.red.shade100,
            title: Text(
              "App Structure",
              style: GoogleFonts.cabin(fontSize: 22),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppStructure(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
