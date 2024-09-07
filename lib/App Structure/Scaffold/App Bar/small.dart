import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/Temp/Profile.dart';

class Medium extends StatelessWidget {
  const Medium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              );
            },
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(Icons.attachment_sharp),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.calendar_month),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileOpen(),
                  ),
                );
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Shivam",
                    style: GoogleFonts.exo2(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}