import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieflix/providers/Filter_provider.dart';
import 'package:movieflix/models/movie.dart';

class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({
    super.key,
    //required this.currentFilters
  });

  //final Map<Filter, bool> currentFilters;
  @override
  ConsumerState<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends ConsumerState<FiltersScreen> {
  // var _adventureMovies = false;
  // var _actionMovies = false;
  // var _comedyMovies = false;
  // var _animationMovies = false;
  // var _horrorMovies = false;
  // var _romanceMovies = false;
  // var _thrillerMovies = false;
  // var _dramaMovies = false;
  // var _fantasyMovies = false;
  // var _biographyMovies = false;
  // @override
  // void initState() {
  //   super.initState();
  //   final activeFilters = ref.read(filtersProvider);
  //   _adventureMovies = activeFilters[Filter.isadventure]!;
  //   _actionMovies = activeFilters[Filter.isaction]!;
  //   _comedyMovies = activeFilters[Filter.iscomedy]!;
  //   _animationMovies = activeFilters[Filter.isanimation]!;
  //   _horrorMovies = activeFilters[Filter.ishorror]!;
  //   _romanceMovies = activeFilters[Filter.isromance]!;
  //   _thrillerMovies = activeFilters[Filter.isthriller]!;
  //   _dramaMovies = activeFilters[Filter.isdrama]!;
  //   _fantasyMovies = activeFilters[Filter.isfantasy]!;
  //   _biographyMovies = activeFilters[Filter.isbiography]!;
  // }

  @override
  Widget build(BuildContext context) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters...'),
      ),
      body:
          // WillPopScope(
          //   onWillPop: () async {
          //     ref.read(filtersProvider.notifier).setFilters({
          //       Filter.isadventure: _adventureMovies,
          //       Filter.isaction: _actionMovies,
          //       Filter.iscomedy: _comedyMovies,
          //       Filter.isanimation: _animationMovies,
          //       Filter.ishorror: _horrorMovies,
          //       Filter.isromance: _romanceMovies,
          //       Filter.isthriller: _thrillerMovies,
          //       Filter.isdrama: _dramaMovies,
          //       Filter.isfantasy: _fantasyMovies,
          //       Filter.isbiography: _biographyMovies,
          //     });
          //     // Navigator.of(context).pop();
          //     return true;
          //   },
          Column(children: [
        SwitchListTile(
          value: activeFilters[Filter.isadventure]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.isadventure, isChecked);
          },
          title: Text(
            'Adventure-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.isaction]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.isaction, isChecked);
          },
          title: Text(
            'Action-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.iscomedy]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.iscomedy, isChecked);
          },
          title: Text(
            'Comedy-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.isanimation]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.isanimation, isChecked);
          },
          title: Text(
            'Animation-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.ishorror]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.ishorror, isChecked);
          },
          title: Text(
            'Horror-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.ishorror]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.ishorror, isChecked);
          },
          title: Text(
            'Horror-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.isthriller]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.isthriller, isChecked);
          },
          title: Text(
            'Thriller-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.isdrama]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.isdrama, isChecked);
          },
          title: Text(
            'Drama-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.isfantasy]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.isfantasy, isChecked);
          },
          title: Text(
            'Fantasy-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.isbiography]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.isbiography, isChecked);
          },
          title: Text(
            'Biography-Movies',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
      ]),
    );
  }
}
