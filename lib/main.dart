import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieflix/screens/start_screen.dart';
import 'package:movieflix/screens/years.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    brightness: Brightness.dark,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: const YearScreen()
        // StartScreen(onContinue: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (ctx) => const YearScreen(),
        //     ),
        //   );
        // }),
        );
  }
}
