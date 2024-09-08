import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarSecondary extends StatelessWidget {
  const TabBarSecondary({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Controls the number of tabs in the parent TabBar
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Secondary TabBar",
            style: GoogleFonts.xanhMono(fontSize: 22),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
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
                icon: Icon(Icons.account_circle_rounded),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NestedTab("Home"),
            NestedTab("Star"),
            NestedTab("Settings"),
            NestedTab("Account"),
          ],
        ),
      ),
    );
  }
}

class NestedTab extends StatefulWidget {
  const NestedTab(this.outerTab, {super.key});
  final String outerTab;

  @override
  State<NestedTab> createState() => _NestedTabState();
}

class _NestedTabState extends State<NestedTab> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Set length to match the nested tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController, // Use the controller for the nested TabBar
          tabs: const <Widget>[
            Tab(
              text: "Primary",
            ),
            Tab(
              text: "Secondary",
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController, // Use the same controller for the TabBarView
            children: const [
              Card(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text("Primary Content"),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text("Secondary Content"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
