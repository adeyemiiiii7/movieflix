import 'package:flutter/material.dart';
import 'package:movieflix/data/dummy_data.dart';
import 'package:movieflix/screens/movie.dart';
import 'package:movieflix/widgets/year_grid_item.dart';

class YearScreen extends StatelessWidget {
  const YearScreen({super.key});

  void _selectYear(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => const MovieScreen(title: 'Some title', movies: []),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick A Year'),
      ),
      body: GridView(
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
                _selectYear(context);
              },
            ),
        ],
      ),
    );
  }
}
