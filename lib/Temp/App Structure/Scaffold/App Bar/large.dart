
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/Temp/Profile.dart';

class Large extends StatelessWidget {
  const Large({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
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
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.only(left: 20, bottom: 5),
            title: Text(
              "Shivam",
              style: GoogleFonts.exo2(fontSize: 30),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200,
              color: Colors.lightGreen,
            )
          ],
        ),
      ),
    );
  }
}
