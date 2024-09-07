import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grokking_flutter/App%20Structure/Custom%20Scroll%20View/Sliver%20App%20Bar/sliverAppBar.dart';
import 'package:grokking_flutter/Bloc/Bottom%20Navi%20Bloc/bottom_navi_bloc_bloc.dart';
import 'package:grokking_flutter/Bloc/Design%20One%20Bloc/design_one_bloc.dart';
import 'package:grokking_flutter/Bloc/Design%20Two%20Bloc/design_two_bloc_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => BottomNaviBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => DesignOneBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => DesignTwoBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedIconTheme: IconThemeData(color: Colors.redAccent),
            unselectedIconTheme: IconThemeData(color: Colors.black),
          ),
        ),
        home: const SliverAppBarWidget(),
      ),
    );
  }
}
