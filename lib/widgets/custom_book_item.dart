import 'package:alpha/models/book_model.dart';
import 'package:alpha/utils/styles.dart';
import 'package:alpha/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomBookCover(image: bookModel.image),
        ),
        const SizedBox(height: 6),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Catcher in the Rye",
            style: Styles.styleBold16(context).copyWith(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "J.D. Salinger",
            style: Styles.styleReglar12(context),
          ),
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
