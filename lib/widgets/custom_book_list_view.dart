import 'package:alpha/models/book_model.dart';
import 'package:alpha/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key, required this.books});

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Container(
          width: 160,
          padding: const EdgeInsets.only(right: 10.0),
          child: CustomBookItem(bookModel: books[index]),
        );
      },
    );
  }
}
