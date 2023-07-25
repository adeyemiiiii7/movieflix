import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieflix/providers/Filter_provider.dart';
import 'package:movieflix/providers/list_provider.dart';
import 'package:movieflix/providers/movies_provider.dart';
import 'package:movieflix/screens/filters.dart';
import 'package:movieflix/screens/movie.dart';
import 'package:movieflix/screens/years.dart';
import 'package:movieflix/widgets/main_drawer.dart';

import '../models/movie.dart';

const kIntialFilters = {
  Filter.isadventure: false,
  Filter.isaction: false,
  Filter.iscomedy: false,
  Filter.isanimation: false,
  Filter.ishorror: false,
  Filter.isromance: false,
  Filter.isthriller: false,
  Filter.isdrama: false,
  Filter.isfantasy: false,
  Filter.isbiography: false,
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
          builder: (ctx) => const FiltersScreen(
              // currentFilters: _selectedFilters,
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
    final activeFilters = ref.watch(filtersProvider);
    final avaliableMovies = movies.where((movie) {
      if (activeFilters[Filter.isadventure]! && !movie.isadventure) {
        return false;
      }

      if (activeFilters[Filter.isaction]! && !movie.isaction) {
        return false;
      }

      if (activeFilters[Filter.iscomedy]! && !movie.iscomedy) {
        return false;
      }

      if (activeFilters[Filter.isanimation]! && !movie.isanimation) {
        return false;
      }

      if (activeFilters[Filter.ishorror]! && !movie.ishorror) {
        return false;
      }

      if (activeFilters[Filter.isthriller]! && !movie.isthriller) {
        return false;
      }

      if (activeFilters[Filter.isdrama]! && !movie.isdrama) {
        return false;
      }

      if (activeFilters[Filter.isfantasy]! && !movie.isfantasy) {
        return false;
      }

      if (activeFilters[Filter.isbiography]! && !movie.isbiography) {
        return false;
      }
      return true;
    }).toList();

    Widget activePage = YearScreen(avaliableMovies: avaliableMovies);
    var activePageTitle = 'Years';
    if (_selectedPageIndex == 1) {
      final listMovies = ref.watch(ListMoviesProvider);
      activePage = MovieScreen(
        movies: listMovies,
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
