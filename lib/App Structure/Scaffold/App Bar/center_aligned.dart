import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/Temp/Profile.dart';

class Center_aligned extends StatelessWidget {
  const Center_aligned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          },
        ),
        title: Center(
          child: Text(
            "Shivam",
            style: GoogleFonts.exo2(
              fontSize: 22,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileOpen(),
                ),
              );
            },
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person_2_rounded),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100,
              color: Colors.indigoAccent,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Close"),
            )
            // Add more items here as needed
          ],
        ),
      ),
    );
  }
}