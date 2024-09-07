import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/Bloc/Design%20Two%20Bloc/design_two_bloc_bloc.dart';

class DesignTwo extends StatelessWidget {
  const DesignTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shivam",
          style: GoogleFonts.exo2(
            fontSize: 22,
          ),
        ),
      ),
      body: BlocBuilder<DesignTwoBloc, int>(
        builder: (context, index) {
          // Show the appropriate content based on the index
          switch (index) {
            case 0:
              return Center(
                child: Text(
                  "Home",
                  style: GoogleFonts.exo2(
                    fontSize: 22,
                  ),
                ),
              );
            case 1:
              return Center(
                child: Text(
                  "Search",
                  style: GoogleFonts.exo2(
                    fontSize: 22,
                  ),
                ),
              );
            case 2:
              return Center(
                child: Text(
                  "Favorite",
                  style: GoogleFonts.exo2(
                    fontSize: 22,
                  ),
                ),
              );
            case 3:
              return Center(
                child: Text(
                  "Profile",
                  style: GoogleFonts.exo2(
                    fontSize: 22,
                  ),
                ),
              );
            default:
              return Container();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BlocBuilder<DesignTwoBloc, int>(
        builder: (context, selectedIndex) {
          return BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  color: selectedIndex == 0 ? Colors.redAccent : Colors.black,
                  onPressed: () {
                    context.read<DesignTwoBloc>().add(DesignTwoBlocEvent.Home);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  color: selectedIndex == 1 ? Colors.redAccent : Colors.black,
                  onPressed: () {
                    context
                        .read<DesignTwoBloc>()
                        .add(DesignTwoBlocEvent.Search);
                  },
                ),
                const SizedBox(width: 40), // Space for the FloatingActionButton
                IconButton(
                  icon: const Icon(Icons.favorite),
                  color: selectedIndex == 2 ? Colors.redAccent : Colors.black,
                  onPressed: () {
                    context
                        .read<DesignTwoBloc>()
                        .add(DesignTwoBlocEvent.Favorite);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  color: selectedIndex == 3 ? Colors.redAccent : Colors.black,
                  onPressed: () {
                    context
                        .read<DesignTwoBloc>()
                        .add(DesignTwoBlocEvent.Profile);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
