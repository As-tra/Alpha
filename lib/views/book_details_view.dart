import 'package:alpha/models/book_model.dart';
import 'package:alpha/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    timeDilation = 4;
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(
          bookModel: bookModel,
        ),
      ),
    );
  }
}
