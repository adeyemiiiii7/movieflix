import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieflix/providers/movies_provider.dart';

enum Filter {
  isadventure,
  isaction,
  iscomedy,
  isanimation,
  ishorror,
  isromance,
  isthriller,
  isdrama,
  isfantasy,
  isbiography
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
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
        });

  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);
final filteredMoviesProvider = Provider((ref) {
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
});
