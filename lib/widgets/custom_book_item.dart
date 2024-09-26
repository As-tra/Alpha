import 'package:alpha/models/book_model.dart';
import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(bookModel.image),
        Text(
          "Catcher in the Rye",
          style: Styles.styleBold16(context).copyWith(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        Text(
          "J.D. Salinger",
          style: Styles.styleReglar12(context),
        ),
        Text(
          "P198.00",
          style: Styles.styleReglar10(context).copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
