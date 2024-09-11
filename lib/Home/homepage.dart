import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View/Material_Widgets/material_widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "There is no Tomorrow",
          style: GoogleFonts.aclonica(),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.black12,
            title: Text(
              "Material Widget",
              style: GoogleFonts.cabin(fontSize: 22),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Material_Widgets(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
