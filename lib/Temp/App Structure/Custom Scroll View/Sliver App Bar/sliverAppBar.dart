import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            elevation: 70,
            shadowColor: Colors.black45,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sliver App Bar",
                style: GoogleFonts.sail(fontSize: 22),
              ),
              background: Image.asset("assets/sliverPro.jpg"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int) {
              return const ListTile(
                title: Text("HYy"),
              );
            }, childCount: 50),
          ),
        ],
      ),
    );
  }
}
