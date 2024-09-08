import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tab Bar Sample",
          style: GoogleFonts.sacramento(fontSize: 22),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.star),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
            Tab(
              icon: Icon(Icons.account_circle),
            )
          ],
        ),
      ),
      body: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Text(
                "Home",
                style: GoogleFonts.jacquesFrancois(fontSize: 22),
              ),
            ),
            Center(
              child: Text(
                "Star",
                style: GoogleFonts.laBelleAurore(fontSize: 22),
              ),
            ),
            Center(
              child: Text(
                "Setting",
                style: GoogleFonts.cabin(fontSize: 22),
              ),
            ),
            Center(
              child: Text(
                "Profile",
                style: GoogleFonts.pacifico(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
