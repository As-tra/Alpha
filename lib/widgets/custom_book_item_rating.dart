import 'package:alpha/utils/colors.dart';
import 'package:alpha/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomBookRating extends StatelessWidget {
  const CustomBookRating({
    super.key,
    required this.rating,
  });

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: double.tryParse(rating) ?? 5,
          minRating: 1,
          itemSize: 20,
          direction: Axis.horizontal,
          allowHalfRating: true,
          tapOnlyMode: true,
          itemCount: int.tryParse(rating) ?? 5,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: AppColors.starColor,
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(width: 4),
        Text(
          rating,
          style: Styles.styleReglar14(context),
        ),
      ],
    );
  }
}
