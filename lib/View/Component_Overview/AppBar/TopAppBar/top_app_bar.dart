import 'package:flutter/material.dart';
import 'package:grokking_flutter/View/Universal_Widget/AppBar/appBarWidget.dart';

class TopAppbar extends StatelessWidget {
  const TopAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(
          appTitle: "Top App Bar",
        ),
      ),
    );
  }
}
