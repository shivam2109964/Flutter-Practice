import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View/Universal_Widget/AppBar/appBarWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _selectedDrawer = false;
  bool _nestedDrawer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 35,
            ),
            if (!_selectedDrawer)
              ListTile(
                title: Text(
                  "Component",
                  style: GoogleFonts.exo2(fontSize: 18),
                ),
                leading: Image.asset(
                  "assets/icons/play_normal.png",
                  height: 30,
                ),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  setState(() {
                    _selectedDrawer = true;
                  });
                },
              ),
            if (_selectedDrawer)
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.arrow_back),
                    title: Text(
                      "Back",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    onTap: () {
                      setState(() {
                        _selectedDrawer = false;
                      });
                    },
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Center(
                      child: Text(
                        "Components Overview",
                        style: GoogleFonts.exo2(fontSize: 18),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "App Bars",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_drop_down),
                    onTap: () {
                      setState(() {
                        _nestedDrawer = !_nestedDrawer;
                      });
                    },
                  ),
                  if (_nestedDrawer)
                    Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Bottom App Bar",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Top App Bars",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
