import 'package:flutter/material.dart';
import 'package:movieflix/data/dummy_data.dart';
import 'package:movieflix/models/movie.dart';
import 'package:movieflix/models/year.dart';
import 'package:movieflix/screens/movie.dart';
import 'package:movieflix/widgets/year_grid_item.dart';

class YearScreen extends StatelessWidget {
  const YearScreen({
    super.key,
    //required this.avaliableMovies
  });

  // final List<Movie> avaliableMovies;

  void _selectYear(BuildContext context, Year year) {
    final selectedMovies =
        dummyData.where((movie) => movie.year.contains(year.id)).toList();
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MovieScreen(title: year.title, movies: selectedMovies),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      children: [
        for (final year in avaliableYears)
          YearGridItem(
            year: year,
            onSelectYear: () {
              _selectYear(context, year);
            },
          ),
      ],
    );
  }
}
