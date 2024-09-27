
import 'package:alpha/models/book_model.dart';
import 'package:alpha/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsCover extends StatelessWidget {
  const CustomBookDetailsCover({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: bookModel.title,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: const Offset(0, 7),
            blurRadius: 14,
            spreadRadius: 0,
            color: Theme.of(context)
                .colorScheme
                .onSurfaceVariant
                .withOpacity(.5),
          ),
        ]),
        height: 300,
        child: CustomBookCover(
          image: bookModel.image,
        ),
      ),
    );
  }
}
