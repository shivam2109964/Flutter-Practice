import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gorkking Flutter",
          style: GoogleFonts.k2d(fontSize: 22),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Components",
                style: GoogleFonts.exo2(fontSize: 22),
              ),
              leading: Image.asset(
                "assets/icons/play_normal.png",
                height: 30,
              ),
              selectedColor: Colors.black12,
              trailing: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
