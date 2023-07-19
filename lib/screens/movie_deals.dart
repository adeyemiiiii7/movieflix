import 'package:flutter/material.dart';
import 'package:movieflix/models/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title), actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.check_box_outline_blank))
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              movie.imageUrl,
              height: 500,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 14),
            Text(
              'Genre: ${movie.genre.name}',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 11),
            Text(
              'Duration: ${movie.duration} min',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 11),
            Text(
              'Restriction: ${movie.restriction.name}',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: 11),
            Text(
              'Rating: ${movie.rating}',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 11),
            Text(
              'About:',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 11),
            Text(
              movie.about,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
