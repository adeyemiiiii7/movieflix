import 'package:flutter/material.dart';
import 'package:movieflix/screens/movie.dart';
import 'package:movieflix/screens/years.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const YearScreen();
    var activePageTitle = 'Years';
    if (_selectedPageIndex == 1) {
      activePage = const MovieScreen(
        movies: [],
        title: '',
      );
      activePageTitle = 'My List';
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(activePageTitle),
        ),
        body: activePage,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedPage,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_outlined), label: 'Years'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'My List')
          ],
        ));
  }
}
