import 'package:alpha/helpers/show_alert.dart';
import 'package:alpha/models/book_model.dart';
import 'package:alpha/utils/app_router.dart';
import 'package:alpha/utils/styles.dart';
import 'package:alpha/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem(
      {super.key, required this.bookModel, required this.isLocked});

  final BookModel bookModel;
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => isLocked
              ? customShowDialog(context)
              : GoRouter.of(context).push(
                  AppRouter.kBookDetails,
                  extra: bookModel,
                ),
          child: Hero(
            tag: bookModel.title,
            child: CustomBookCover(
              image: bookModel.image,
              isLocked: isLocked,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: Text(
                bookModel.title,
                style: Styles.styleBold16(context).copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ],
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            bookModel.author,
            style: Styles.styleReglar12(context),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "P${bookModel.price}.00",
            style: Styles.styleReglar10(context).copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
