import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieflix/models/movie.dart';
import 'package:movieflix/screens/start_screen.dart';
import 'package:movieflix/screens/tabs.dart';
import 'package:movieflix/screens/years.dart';
import 'package:movieflix/widgets/year_grid_item.dart';

import 'models/year.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(103, 87, 72, 72),
      brightness: Brightness.dark,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white));

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
      home: //const TabsScreen()
          StartScreen(onContinue: () {
        Navigator.pop(
          context,
          MaterialPageRoute(
            builder: (ctx) => YearScreen(
              onPressList: (Movie movie) {},
            ),
          ),
        );
      }),
    );
  }
}
