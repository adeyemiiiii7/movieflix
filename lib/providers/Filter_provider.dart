import 'package:flutter_riverpod/flutter_riverpod.dart';

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
