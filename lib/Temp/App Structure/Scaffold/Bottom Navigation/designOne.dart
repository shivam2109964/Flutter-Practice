import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grokking_flutter/Temp/Bloc/Design%20One%20Bloc/design_one_bloc.dart';

class DesignOne extends StatelessWidget {
  const DesignOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(),
      ),
      body: BlocBuilder<DesignOneBloc, int>(
        builder: (context, integer) {
          switch (integer) {
            case 0:
              return const Center(
                child: Text("Home"),
              );
            case 1:
              return const Center(
                child: Text("Brave"),
              );
            case 2:
              return const Center(
                child: Text("GPT"),
              );
            default:
              return Container();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<DesignOneBloc, int>(
        builder: (context, integer) {
          return BottomNavigationBar(
            onTap: (index) {
              BlocProvider.of<DesignOneBloc>(context).add(
                DesignOneEvent.values[index],
              );
            },
            currentIndex: integer,
            iconSize: 15,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                activeIcon: Image.asset(
                  "assets/icons/home.png",
                  height: 30,
                ),
                icon: Image.asset(
                  "assets/icons/home_normal.png",
                  height: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: "Brave",
                icon: Image.asset(
                  "assets/icons/brave_normal.png",
                  height: 30,
                ),
                activeIcon: Image.asset(
                  "assets/icons/brave.png",
                  height: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: "GPT",
                activeIcon: Image.asset(
                  "assets/icons/gpt.png",
                  height: 30,
                ),
                icon: Image.asset(
                  "assets/icons/gpt_normal.png",
                  height: 30,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
