import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grokking_flutter/Temp/Bloc/Bottom%20Navi%20Bloc/bottom_navi_bloc_bloc.dart';

class BottomNaviWidget extends StatelessWidget {
  const BottomNaviWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNaviBloc, int>(
        builder: (context, currentIndex) {
          switch (currentIndex) {
            case 0:
              return const Center(
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 22),
                ),
              );
            case 1:
              return const Center(
                child: Text(
                  "Earn",
                  style: TextStyle(fontSize: 22),
                ),
              );
            case 2:
              return const Center(
                child: Text(
                  "Account",
                  style: TextStyle(fontSize: 22),
                ),
              );
            default:
              return Container();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNaviBloc, int>(
        builder: (context, currentIndex) {
          return BottomNavigationBar(
            onTap: (index) {
              BlocProvider.of<BottomNaviBloc>(context).add(
                BottomNaviBlocEvent.values[index],
              );
            },
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                label: "Earn",
                icon: Icon(Icons.monetization_on),
              ),
              BottomNavigationBarItem(
                label: "Account",
                icon: Icon(Icons.account_circle),
              ),
            ],
          );
        },
      ),
    );
  }
}