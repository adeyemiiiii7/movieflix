import 'package:flutter/material.dart';
import 'package:movieflix/models/movie.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key, required this.title, required this.movies});

  final String title;
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );
    if (movies.isNotEmpty) {
      content = ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx, index) => Text(
          movies[index].title,
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
