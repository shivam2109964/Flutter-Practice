import 'package:flutter/material.dart';

class PreferredSizeWidgetAPI extends StatelessWidget {
  const PreferredSizeWidgetAPI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Text("Shivam"),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}