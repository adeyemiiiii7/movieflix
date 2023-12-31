import 'package:flutter/material.dart';
import 'package:movieflix/models/year.dart';

class YearGridItem extends StatelessWidget {
  const YearGridItem({
    super.key,
    required this.year,
    required this.onSelectYear,
  });

  final Year year;
  final void Function() onSelectYear;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectYear,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                year.color.withOpacity(0.55),
                year.color.withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          year.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
