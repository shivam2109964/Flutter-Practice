import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grokking_flutter/App%20Structure/Bottom%20Navigation/designOne.dart';
import 'package:grokking_flutter/Bloc/Design%20One%20Bloc/design_one_bloc.dart';

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
          create: (BuildContext context) => DesignOneBloc(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DesignOne(),
      ),
    );
  }
}
