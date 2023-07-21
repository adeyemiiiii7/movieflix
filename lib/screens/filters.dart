import 'package:flutter/material.dart';

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

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  @override
  Widget build(BuildContext context) {
    var _adventureMovies = false;
    var _actionMovies = false;
    var _comedyMovies = false;
    var _animationMovies = false;
    var _horrorMovies = false;
    // var _romanceMovies = false;
    var _thrillerMovies = false;
    var _dramaMovies = false;
    var _fantasyMovies = false;
    var _biographyMovies = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters...'),
      ),
      body: Column(children: [
        SwitchListTile(
          value: _adventureMovies,
          onChanged: (isChecked) {
            setState(() {
              _adventureMovies = isChecked;
            });
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
          value: _actionMovies,
          onChanged: (isChecked) {
            setState(() {
              _actionMovies = isChecked;
            });
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
          value: _comedyMovies,
          onChanged: (isChecked) {
            setState(() {
              _comedyMovies = isChecked;
            });
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
          value: _animationMovies,
          onChanged: (isChecked) {
            setState(() {
              _animationMovies = isChecked;
            });
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
    );
  }
}
