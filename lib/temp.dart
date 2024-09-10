import 'package:flutter/material.dart';

class TempChecker extends StatelessWidget {
  const TempChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inspector"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTemp(),
                  ),
                );
              },
              title: const Text("Press me"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTemp extends StatelessWidget {
  const MyTemp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Success"),
      ),
    );
  }
}
