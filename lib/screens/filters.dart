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
            value:activeFilters[Filter.iscomedy]!,
            onChanged: (isChecked) {
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
          value:activeFilters[Filter.iscomedy]!,
            onChanged: (isChecked) {
              
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
            value: _horrorMovies,
            onChanged: (isChecked) {
              setState(() {
                _horrorMovies = isChecked;
              });
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
            value: _horrorMovies,
            onChanged: (isChecked) {
              setState(() {
                _horrorMovies = isChecked;
              });
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
            value: _thrillerMovies,
            onChanged: (isChecked) {
              setState(() {
                _thrillerMovies = isChecked;
              });
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
            value: _dramaMovies,
            onChanged: (isChecked) {
              setState(() {
                _dramaMovies = isChecked;
              });
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
            value: _fantasyMovies,
            onChanged: (isChecked) {
              setState(() {
                _fantasyMovies = isChecked;
              });
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
            value: _biographyMovies,
            onChanged: (isChecked) {
              setState(() {
                _biographyMovies = isChecked;
              });
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
      ),
    );
  }
}
