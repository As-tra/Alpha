import 'package:alpha/models/book_model.dart';
import 'package:alpha/utils/styles.dart';
import 'package:alpha/widgets/book_details_app_bar.dart';
import 'package:alpha/widgets/custom_book_details_cover.dart';
import 'package:alpha/widgets/custom_book_item_rating.dart';
import 'package:alpha/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CustomBookDetailsAppBar(),
            CustomBookDetailsCover(bookModel: bookModel),
            const SizedBox(height: 17),
            Text(bookModel.title, style: Styles.styleBold18(context)),
            Text(bookModel.author, style: Styles.styleRegular16(context)),
            const SizedBox(height: 18),
            CustomBookRating(rating: bookModel.rating),
            const SizedBox(height: 18),
            _buildSubTitle(context, "About the author"),
            const SizedBox(height: 12),
            Text(bookModel.aboutAuthor, style: Styles.styleReglar14(context)),
            const SizedBox(height: 18),
            _buildSubTitle(context, "Overview"),
            const SizedBox(height: 12),
            Text(bookModel.overview, style: Styles.styleReglar14(context)),
            const SizedBox(height: 26),
            _buildButton(context),
            const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }

  Row _buildButton(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            btnText: "Add to Cart",
            textColor: Theme.of(context).colorScheme.surface,
            ontap: () {},
            bgColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }

  Row _buildSubTitle(BuildContext context, String title) {
    return Row(
      children: [
        Text(title, style: Styles.styleBold18(context)),
      ],
    );
  }
}
