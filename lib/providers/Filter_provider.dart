import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  adventure,
  action,
  comedy,
  animation,
  horror,
  romance,
  thriller,
  drama,
  fantasy,
  biography
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
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
        });
  void setFilters(Map<Filter, bool> chosenFilters) {
    state = chosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    // state[filter] = isActive; // not allowed! => mutating state
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
