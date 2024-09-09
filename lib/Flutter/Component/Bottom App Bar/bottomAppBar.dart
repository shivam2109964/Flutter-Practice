import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom App Bar",
          style: GoogleFonts.k2d(fontSize: 22),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.search),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.delete_outline),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.save_alt_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.keyboard_voice_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
