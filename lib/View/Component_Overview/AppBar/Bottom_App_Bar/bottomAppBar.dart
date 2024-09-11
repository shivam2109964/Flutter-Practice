import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_flutter/View/Universal_Widget/AppBar/appBarWidget.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  CodeController? codeController;
  final String sacffoldCOde = """
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}""";

  @override
  void initState() {
    super.initState();
    codeController = CodeController(
        language: dart,
        text: sacffoldCOde,
        params: const EditorParams(
          tabSpaces: 5,
        ));
  }

  @override
  void dispose() {
    codeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(
          appTitle: "Bottom App Bar",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/bottomAppBar/FRAME.png"),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bottom app bars display navigation and key actions at the bottom of mobile and tablet screens.",
                        style: GoogleFonts.cabin(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "•   ",
                            style: GoogleFonts.cabin(fontSize: 16),
                          ),
                          Expanded(
                            child: Text(
                              "Use bottom app bars to draw attention to important action",
                              style: GoogleFonts.cabin(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "•   ",
                            style: GoogleFonts.cabin(fontSize: 16),
                          ),
                          Expanded(
                            child: Text(
                              "Can contain up to four icon button and a floating action button (FAB)",
                              style: GoogleFonts.cabin(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "•   ",
                            style: GoogleFonts.cabin(fontSize: 16),
                          ),
                          Expanded(
                            child: Text(
                              "Bottom app bar layout and contents can change on different screens of an app",
                              style: GoogleFonts.cabin(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "•   ",
                            style: GoogleFonts.cabin(fontSize: 16),
                          ),
                          Expanded(
                            child: Text(
                              "Easy to reach on a mobile device",
                              style: GoogleFonts.cabin(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                "assets/bottomAppBar/scaffold.png",
                height: 200,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "About Scaffold",
                        style: GoogleFonts.cabin(fontSize: 20),
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "To build a screen with various UI elements, we use a widget called Scaffold. It's like a container for your entire screen. It allows you to easily add things like an app bar, floating action buttons, and bottom navigation bars.",
                        style: GoogleFonts.cabin(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              CodeTheme(
                data: const CodeThemeData(styles: monokaiSublimeTheme),
                child: CodeField(
                  readOnly: true,
                  controller: codeController!,
                  textStyle: GoogleFonts.sourceCodePro(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/bottomAppBar/appbar.png",
                height: 200,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "About App Bar",
                      style: GoogleFonts.cabin(fontSize: 20),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "The AppBar is the top bar of the app where you can display the title of your screen. Adding an app bar is a best practice in your app. In this bottom app bar section, we use an app bar. To learn more about the app bar, click here.",
                        style: GoogleFonts.cabin(fontSize: 18),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            color: Colors.white,
                            onPressed: () {},
                            child: const Text("Click here"),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
