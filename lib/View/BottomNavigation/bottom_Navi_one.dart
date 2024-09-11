import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View_Model/Bottom_Navi_One/bottom_navi_one_bloc.dart';

class BottomNaviOne extends StatefulWidget {
  const BottomNaviOne({super.key});

  @override
  State<BottomNaviOne> createState() => _BottomNaviOneState();
}

class _BottomNaviOneState extends State<BottomNaviOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Navi One",
          style: GoogleFonts.cabin(),
        ),
      ),
      body: BlocBuilder<BottomNaviOneBloc, int>(
        builder: (context, integer) {
          switch (integer) {
            case 0:
              return Center(
                child: Text(
                  "Home",
                  style: GoogleFonts.cabin(),
                ),
              );
            case 1:
              return Center(
                child: Text(
                  "Brave",
                  style: GoogleFonts.cabin(),
                ),
              );
            case 2:
              return Center(
                child: Text(
                  "Gpt",
                  style: GoogleFonts.cabin(),
                ),
              );
            case 3:
              return Center(
                child: Text(
                  "Security",
                  style: GoogleFonts.cabin(),
                ),
              );
            case 4:
              return Center(
                child: Text(
                  "Play",
                  style: GoogleFonts.cabin(),
                ),
              );
          }
          return Center(
            child: Text(
              "Hy",
              style: GoogleFonts.cabin(),
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNaviOneBloc, int>(
        builder: (context, integer) {
          return BottomNavigationBar(
            selectedItemColor: Colors.black,
            currentIndex: integer,
            onTap: (index) {
              BlocProvider.of<BottomNaviOneBloc>(context)
                  .add(BottomNaviOneEvent.values[index]);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/home_normal.png",
                    height: 26,
                    width: 26,
                  ),
                  activeIcon: Image.asset(
                    "assets/icons/home.png",
                    height: 26,
                    width: 26,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/brave_normal.png",
                    height: 26,
                    width: 26,
                  ),
                  activeIcon: Image.asset(
                    "assets/icons/brave.png",
                    height: 26,
                    width: 26,
                  ),
                  label: "Brave"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/gpt_normal.png",
                    height: 26,
                    width: 26,
                  ),
                  activeIcon: Image.asset(
                    "assets/icons/gpt.png",
                    height: 26,
                    width: 26,
                  ),
                  label: "Gpt"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/password.png",
                    height: 26,
                    width: 26,
                  ),
                  activeIcon: Image.asset(
                    "assets/icons/password_normal.png",
                    height: 26,
                    width: 26,
                  ),
                  label: "Security"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/icons/play_normal.png",
                    height: 26,
                    width: 26,
                  ),
                  activeIcon: Image.asset(
                    "assets/icons/play.png",
                    height: 26,
                    width: 26,
                  ),
                  label: "Play"),
            ],
          );
        },
      ),
    );
  }
}
