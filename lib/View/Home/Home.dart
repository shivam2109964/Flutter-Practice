import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View/Component_Overview/AppBar/Bottom_App_Bar/bottomAppBar.dart';
import 'package:grokking_flutter/View/Component_Overview/AppBar/TopAppBar/top_app_bar.dart';
import 'package:grokking_flutter/View/Universal_Widget/AppBar/appBarWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    super.dispose();
  }

  bool _selectedDrawer = false;
  bool _nestedDrawer = false;
  bool _nestedDrawer1 = false;
  bool _nestedDrawer2 = false;
  bool _nestedDrawer3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
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
                    leading: const Icon(Icons.arrow_back),
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
                    trailing: !_nestedDrawer
                        ? const Icon(Icons.arrow_drop_down)
                        : const Icon(Icons.arrow_drop_up),
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
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomAppBarWidget(),
                              ),
                            );
                          },
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const TopAppbar(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Badges",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Buttons",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: !_nestedDrawer1
                        ? const Icon(Icons.arrow_drop_down)
                        : const Icon(Icons.arrow_drop_up),
                    onTap: () {
                      setState(() {
                        _nestedDrawer1 = !_nestedDrawer1;
                      });
                    },
                  ),
                  if (_nestedDrawer1)
                    Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "All Buttons",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Common buttons",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "FAB",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Extended FAB",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Icon buttons",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Segmented buttons",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Cards",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Carousel",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Checkbox",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Chips",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Data pickers",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Dialogs",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Divider",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Lists",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Menu",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Navigation",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: !_nestedDrawer2
                        ? const Icon(Icons.arrow_drop_down)
                        : const Icon(Icons.arrow_drop_up),
                    onTap: () {
                      setState(() {
                        _nestedDrawer2 = !_nestedDrawer2;
                      });
                    },
                  ),
                  if (_nestedDrawer2)
                    Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Navigation bar",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Navigation drawer",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Navigation rail",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Progress Indicators",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Radio button",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Search",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Sheets",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: !_nestedDrawer3
                        ? const Icon(Icons.arrow_drop_down)
                        : const Icon(Icons.arrow_drop_up),
                    onTap: () {
                      setState(() {
                        _nestedDrawer3 = !_nestedDrawer3;
                      });
                    },
                  ),
                  if (_nestedDrawer3)
                    Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Bottom sheets",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/icons/myic1.png",
                            height: 15,
                          ),
                          title: Text(
                            "Slide sheets",
                            style: GoogleFonts.exo2(fontSize: 18),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Sliders",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Snackbar",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Switch",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Tabs",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Text fields",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Time pickers",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/myic.png",
                      height: 25,
                    ),
                    title: Text(
                      "Tooltips",
                      style: GoogleFonts.exo2(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () {
                      setState(() {});
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
