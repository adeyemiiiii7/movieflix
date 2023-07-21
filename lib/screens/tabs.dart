import 'package:flutter/material.dart';
import 'package:movieflix/screens/filters.dart';
import 'package:movieflix/screens/movie.dart';
import 'package:movieflix/screens/years.dart';
import 'package:movieflix/widgets/main_drawer.dart';

import '../models/movie.dart';

const kIntialFilters = {
  Filter.adventure: false,
  Filter.action: false,
  Filter.comedy: false,
  Filter.animation: false,
  Filter.horror: false,
  Filter.romance: false,
  Filter.thriller: false,
  Filter.drama: false,
  Filter.fantasy: false,
  Filter.biography: false,
};

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  Map<Filter, bool> _selectedFilters = kIntialFilters;
  final List<Movie> _listMovies = [];
  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.maybeOf(context)
        ?.showSnackBar(SnackBar(content: Text(message)));
  }

  void _onPressMovieListStatus(Movie movie) {
    final isExisting = _listMovies.contains(movie);

    if (isExisting) {
      setState(() {
        _listMovies.remove(movie);
      });
      _showInfoMessage('Removed to List');
    } else {
      setState(() {
        _listMovies.add(movie);
      });

      _showInfoMessage('Added to List');
    }
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => FiltersScreen(
            currentFilters: _selectedFilters,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = YearScreen(onPressList: _onPressMovieListStatus);
    var activePageTitle = 'Years';
    if (_selectedPageIndex == 1) {
      activePage = MovieScreen(
          movies: _listMovies, onPressList: _onPressMovieListStatus);
      activePageTitle = 'My List';
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(activePageTitle),
        ),
        drawer: MainDrawer(onSelectScreen: _setScreen),
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
