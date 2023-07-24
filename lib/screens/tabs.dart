import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieflix/providers/movies_provider.dart';
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

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  Map<Filter, bool> _selectedFilters = kIntialFilters;
  final List<Movie> _listMovies = [];

  // void _showInfoMessage(String message) {
  //   ScaffoldMessenger.of(context).clearSnackBars();
  //   ScaffoldMessenger.maybeOf(context)
  //       ?.showSnackBar(SnackBar(content: Text(message)));
  // }

  // void _onPressMovieListStatus(Movie movie) {
  //   final isExisting = _listMovies.contains(movie);

  //   if (isExisting) {
  //     setState(() {
  //       _listMovies.remove(movie);
  //     });
  //     _showInfoMessage('Removed to List');
  //   } else {
  //     setState(() {
  //       _listMovies.add(movie);
  //     });

  //     _showInfoMessage('Added to List');
  //   }
  // }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FiltersScreen(
            currentFilters: _selectedFilters,
          ),
        ),
      );

      setState(() {
        _selectedFilters = result ?? kIntialFilters;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(moviesProvider);
    final avaliableMovies = movies.where((movies) {
      if (_selectedFilters[Filter.adventure]! && !movies.isadventure) {
        return false;
      }

      if (_selectedFilters[Filter.action]! && !movies.isaction) {
        return false;
      }

      if (_selectedFilters[Filter.comedy]! && !movies.iscomedy) {
        return false;
      }

      if (_selectedFilters[Filter.animation]! && !movies.isanimation) {
        return false;
      }

      if (_selectedFilters[Filter.horror]! && !movies.ishorror) {
        return false;
      }

      if (_selectedFilters[Filter.thriller]! && !movies.isthriller) {
        return false;
      }

      if (_selectedFilters[Filter.drama]! && !movies.isdrama) {
        return false;
      }

      if (_selectedFilters[Filter.fantasy]! && !movies.isfantasy) {
        return false;
      }

      if (_selectedFilters[Filter.biography]! && !movies.isbiography) {
        return false;
      }
      return true;
    }).toList();

    Widget activePage = YearScreen(avaliableMovies: avaliableMovies);
    var activePageTitle = 'Years';
    if (_selectedPageIndex == 1) {
      activePage = MovieScreen(
        movies: _listMovies,
      );
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
